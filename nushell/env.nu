let-env ATUIN_HISTORY = 'atuin history list'
let-env ATUIN_HISTORY_ID = '018968bb6ca076eeb1264b891a14382e'
let-env ATUIN_SESSION = '018968bb6cd775f9a7d75280b8bc00f5'
let-env CMD_DURATION_MS = '0823'
let-env COLORFGBG = '15;0'
let-env COLORTERM = 'truecolor'
let-env COMMAND_MODE = 'unix2003'
let-env EDITOR = 'nvim'
let-env HOME = '/Users/alex'
let-env ITERM_PROFILE = 'Default'
let-env ITERM_SESSION_ID = 'w0t0p0:1C114586-6CC7-4638-8B5C-1CB47ECFAC5E'
let-env LANG = 'en_GB.UTF-8'
let-env LAST_EXIT_CODE = '0'
let-env LC_TERMINAL = 'iTerm2'
let-env LC_TERMINAL_VERSION = '3.4.19'
let-env LOGNAME = 'alex'
let-env LS_COLORS = '*.7z=01;31:*.aac=00;36:*.ace=01;31:*.alz=01;31:*.arc=01;31:*.arj=01;31:*.asf=01;35:*.au=00;36:*.avi=01;35:*.bmp=01;35:*.bz=01;31:*.bz2=01;31:*.cab=01;31:*.cgm=01;35:*.cpio=01;31:*.deb=01;31:*.dl=01;35:*.dwm=01;31:*.dz=01;31:*.ear=01;31:*.emf=01;35:*.esd=01;31:*.flac=00;36:*.flc=01;35:*.fli=01;35:*.flv=01;35:*.gif=01;35:*.gl=01;35:*.gz=01;31:*.jar=01;31:*.jpeg=01;35:*.jpg=01;35:*.lha=01;31:*.lrz=01;31:*.lz=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.lzo=01;31:*.m2v=01;35:*.m4a=00;36:*.m4v=01;35:*.mid=00;36:*.midi=00;36:*.mjpeg=01;35:*.mjpg=01;35:*.mka=00;36:*.mkv=01;35:*.mng=01;35:*.mov=01;35:*.mp3=00;36:*.mp4=01;35:*.mp4v=01;35:*.mpc=00;36:*.mpeg=01;35:*.mpg=01;35:*.nuv=01;35:*.oga=00;36:*.ogg=00;36:*.ogm=01;35:*.ogv=01;35:*.ogx=01;35:*.opus=00;36:*.pbm=01;35:*.pcx=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.qt=01;35:*.ra=00;36:*.rar=01;31:*.rm=01;35:*.rmvb=01;35:*.rpm=01;31:*.rz=01;31:*.sar=01;31:*.spx=00;36:*.svg=01;35:*.svgz=01;35:*.swm=01;31:*.t7z=01;31:*.tar=01;31:*.taz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tga=01;35:*.tgz=01;31:*.tif=01;35:*.tiff=01;35:*.tlz=01;31:*.txz=01;31:*.tz=01;31:*.tzo=01;31:*.tzst=01;31:*.vob=01;35:*.war=01;31:*.wav=00;36:*.webm=01;35:*.wim=01;31:*.wmv=01;35:*.xbm=01;35:*.xcf=01;35:*.xpm=01;35:*.xspf=00;36:*.xwd=01;35:*.xz=01;31:*.yuv=01;35:*.z=01;31:*.zip=01;31:*.zoo=01;31:*.zst=01;31:bd=40;33;01:ca=30;41:cd=40;33;01:di=01;34:do=01;35:ex=01;32:pi=40;33:ln=01;36:mi=00:mh=00:or=40;31;01:ow=34;42:rs=0:sg=30;43:su=37;41:so=01;35:st=37;44:tw=30;42:'
let-env NIX_PROFILES = '/nix/var/nix/profiles/default /Users/alex/.nix-profile'
let-env NIX_SSL_CERT_FILE = '/nix/var/nix/profiles/default/etc/ssl/certs/ca-bundle.crt'
let-env PATH = [/Users/alex/.nix-profile/bin, /nix/var/nix/profiles/default/bin, /usr/bin, /bin, /usr/sbin, /sbin, /Users/alex/bin, /Users/alex/.local/bin, /opt/homebrew/bin, /usr/local/bin, /opt/homebrew/opt/llvm@15/bin, /Users/alex/.zsh/plugins/zsh-nix-shell]
let-env PROMPT_COMMAND = '<Closure 1989>'
let-env PROMPT_COMMAND_RIGHT = '<Closure 1998>'
let-env PROMPT_INDICATOR = ''
let-env PROMPT_MULTILINE_INDICATOR = '∙ '
let-env SHELL = '/Users/alex/.nix-profile/bin/nu'
let-env SHLVL = '1'
let-env SSH_AUTH_SOCK = '/private/tmp/com.apple.launchd.gga2XCiwcc/Listeners'
let-env STARSHIP_SESSION_KEY = 'CWPLRz5A6U9AbEdc'
let-env STARSHIP_SHELL = 'nu'
let-env TERM = 'xterm-256color'
let-env TERM_PROGRAM = 'iTerm.app'
let-env TERM_PROGRAM_VERSION = '3.4.19'
let-env TERM_SESSION_ID = 'w0t0p0:1C114586-6CC7-4638-8B5C-1CB47ECFAC5E'
let-env TMPDIR = '/var/folders/6f/87nyj9g97231hd7fqf_0xqzm0000gn/T/'
let-env USER = 'alex'
let-env XDG_RUNTIME_DIR = '/var/folders/6f/87nyj9g97231hd7fqf_0xqzm0000gn/T/'
let-env XPC_FLAGS = '0x0'
let-env XPC_SERVICE_NAME = '0'
let-env _ = '/Users/alex/.nix-profile/bin/nu'
let-env __CFBundleIdentifier = 'com.googlecode.iterm2'
let-env __CF_USER_TEXT_ENCODING = '0x1F5:0x0:0x2'
let-env __HM_SESS_VARS_SOURCED = '1'
let-env __HM_ZSH_SESS_VARS_SOURCED = '1'




# Nushell Environment Config File
#
# version = 0.79.0

def create_left_prompt [] {
    mut home = ""
    try {
        if $nu.os-info.name == "windows" {
            $home = $env.USERPROFILE
        } else {
            $home = $env.HOME
        }
    }

    let dir = ([
        ($env.PWD | str substring 0..($home | str length) | str replace -s $home "~"),
        ($env.PWD | str substring ($home | str length)..)
    ] | str join)

    let path_segment = if (is-admin) {
        $"(ansi red_bold)($dir)"
    } else {
        $"(ansi green_bold)($dir)"
    }

    $path_segment
}

def create_right_prompt [] {
    let time_segment = ([
        (ansi reset)
        (ansi magenta)
        (date now | date format '%m/%d/%Y %r')
    ] | str join)

    let last_exit_code = if ($env.LAST_EXIT_CODE != 0) {([
        (ansi rb)
        ($env.LAST_EXIT_CODE)
    ] | str join)
    } else { "" }

    ([$last_exit_code, (char space), $time_segment] | str join)
}

# Use nushell functions to define your right and left prompt
let-env PROMPT_COMMAND = {|| create_left_prompt }
let-env PROMPT_COMMAND_RIGHT = {|| create_right_prompt }

# The prompt indicators are environmental variables that represent
# the state of the prompt
let-env PROMPT_INDICATOR = {|| "> " }
let-env PROMPT_INDICATOR_VI_INSERT = {|| ": " }
let-env PROMPT_INDICATOR_VI_NORMAL = {|| "> " }
let-env PROMPT_MULTILINE_INDICATOR = {|| "::: " }

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
#let-env ENV_CONVERSIONS = {
#  "PATH": {
#    from_string: { |s| $s | split row (char esep) | path expand -n }
#    to_string: { |v| $v | path expand -n | str join (char esep) }
#  }
#  "Path": {
#    from_string: { |s| $s | split row (char esep) | path expand -n }
#    to_string: { |v| $v | path expand -n | str join (char esep) }
#  }
#}

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
let-env NU_LIB_DIRS = [
    ($nu.default-config-dir | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
let-env NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins')
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# let-env PATH = ($env.PATH | split row (char esep) | prepend '/some/path')


