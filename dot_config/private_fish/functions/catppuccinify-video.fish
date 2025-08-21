function catppuccinify-video -d "Catppuccinify a video with hald CLUT (ffmpeg)"
    argparse 'f/flavor=' 'l/level=' 'o/output=' h/help -- $argv
    or return 1

    if set -q _flag_help
        echo "Usage: catppuccinify-video [options] <input.mp4>"
        echo "Options:"
        echo "  -f, --flavor FLAVOR   Catppuccin flavor (default: macchiato)"
        echo "  -l, --level LEVEL     Hald CLUT level (default: 8)"
        echo "  -o, --output OUTPUT   Output filename"
        echo "  -h, --help           Show this help"
        return 0
    end

    if test (count $argv) -eq 0
        echo "Error: input file required" >&2
        return 1
    end

    # How to improve variables?
    set -l in $argv[1]
    set -l flavor (string lower -- (string length -q -- "$_flag_flavor"; and echo $_flag_flavor; or echo macchiato))
    set -l level (string length -q -- "$_flag_level"; and echo $_flag_level; or echo 8)
    set -l out (string length -q -- "$_flag_output"; and echo $_flag_output; or echo (string replace -r '\.[^.]*$' '' (basename "$in"))"-ctp-$flavor.mp4")

    set -l hald "hald$level-$flavor.png"
    if not test -e "$hald"
        echo $hald $level $flavor $out
        magick hald:$level hald$level.png
        catppuccinifier --flavor $flavor --hald $level hald$level-$flavor.png -d .
        rm -f hald$level-$flavor.png
    end

    ffmpeg -hide_banner -y -i "$in" -i "$hald" \
        -filter_complex "[0:v][1:v]haldclut" -c:a copy "$out"
    echo "→ $out"
end
