function __title_case -a string
    echo $string | sed 's/^/ /;s/ [aA]/ A/g;s/ [bB]/ B/g;s/ [cC]/ C/g;s/ [dD]/ D/g;s/ [eE]/ E/g;s/ [fF]/ F/g;s/ [gG]/ G/g;s/ [hH]/ H/g;s/ [iI]/ I/g;s/ [jJ]/ J/g;s/ [kK]/ K/g;s/ [lL]/ L/g;s/ [mM]/ M/g;s/ [nN]/ N/g;s/ [oO]/ O/g;s/ [pP]/ P/g;s/ [qQ]/ Q/g;s/ [rR]/ R/g;s/ [sS]/ S/g;s/ [tT]/ T/g;s/ [uU]/ U/g;s/ [vV]/ V/g;s/ [wW]/ W/g;s/ [xX]/ X/g;s/ [yY]/ Y/g;s/ [zZ]/ Z/g;s/^.//'
end

function mkjava
    set length (count $argv)
    # only one
    if [ $length -eq 0 ]
        echo 'no argumant error.'
        return
    end

    set cap (__title_case $argv)

    string trim 'class '$cap' {
    public static void main(String[] args) {
        System.out.println("hello fish.");
    }
}
' > ./$cap.java
    echo './'$cap'.java file was created.'
end
