.class public Lcom/fenghuo/utils/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field private static mMimeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    .line 17
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ez"

    const-string v2, "application/andrew-inset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "hqx"

    const-string v2, "application/mac-binhex40"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "cpt"

    const-string v2, "application/mac-compactpro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "bin"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "dms"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "lha"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "lzh"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "exe"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "class"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "so"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "dll"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "oda"

    const-string v2, "application/oda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ai"

    const-string v2, "application/postscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "eps"

    const-string v2, "application/postscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ps"

    const-string v2, "application/postscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "smi"

    const-string v2, "application/smil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "smil"

    const-string v2, "application/smil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mif"

    const-string v2, "application/vnd.mif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wbxml"

    const-string v2, "application/vnd.wap.wbxml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "bcpio"

    const-string v2, "application/x-bcpio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "vcd"

    const-string v2, "application/x-cdlink"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "pgn"

    const-string v2, "application/x-chess-pgn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "cpio"

    const-string v2, "application/x-cpio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "csh"

    const-string v2, "application/x-csh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "dcr"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "dir"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "dxr"

    const-string v2, "application/x-director"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "dvi"

    const-string v2, "application/x-dvi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "spl"

    const-string v2, "application/x-futuresplash"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "gtar"

    const-string v2, "application/x-gtar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "hdf"

    const-string v2, "application/x-hdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "js"

    const-string v2, "application/x-javascript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "skp"

    const-string v2, "application/x-koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "skd"

    const-string v2, "application/x-koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "skt"

    const-string v2, "application/x-koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "skm"

    const-string v2, "application/x-koan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "latex"

    const-string v2, "application/x-latex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "nc"

    const-string v2, "application/x-netcdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "cdf"

    const-string v2, "application/x-netcdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "sh"

    const-string v2, "application/x-sh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "shar"

    const-string v2, "application/x-shar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "sit"

    const-string v2, "application/x-stuffit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "sv4cpio"

    const-string v2, "application/x-sv4cpio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "sv4crc"

    const-string v2, "application/x-sv4crc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "tar"

    const-string v2, "application/x-tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "tcl"

    const-string v2, "application/x-tcl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "tex"

    const-string v2, "application/x-tex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "texinfo"

    const-string v2, "application/x-texinfo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "texi"

    const-string v2, "application/x-texinfo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "t"

    const-string v2, "application/x-troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "tr"

    const-string v2, "application/x-troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "roff"

    const-string v2, "application/x-troff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "man"

    const-string v2, "application/x-troff-man"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "me"

    const-string v2, "application/x-troff-me"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ms"

    const-string v2, "application/x-troff-ms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ustar"

    const-string v2, "application/x-ustar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "src"

    const-string v2, "application/x-wais-source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "zip"

    const-string v2, "application/zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "au"

    const-string v2, "audio/basic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "snd"

    const-string v2, "audio/basic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mid"

    const-string v2, "audio/midi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "midi"

    const-string v2, "audio/midi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mpga"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mp2"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "aif"

    const-string v2, "audio/x-aiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "aiff"

    const-string v2, "audio/x-aiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "aifc"

    const-string v2, "audio/x-aiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "m3u"

    const-string v2, "audio/x-mpegurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ram"

    const-string v2, "audio/x-pn-realaudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "rm"

    const-string v2, "audio/x-pn-realaudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "rpm"

    const-string v2, "audio/x-pn-realaudio-plugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ra"

    const-string v2, "audio/x-realaudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "pdb"

    const-string v2, "chemical/x-pdb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xyz"

    const-string v2, "chemical/x-xyz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "tiff"

    const-string v2, "image/tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "tif"

    const-string v2, "image/tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "djvu"

    const-string v2, "image/vnd.djvu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "djv"

    const-string v2, "image/vnd.djvu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ras"

    const-string v2, "image/x-cmu-raster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "pnm"

    const-string v2, "image/x-portable-anymap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "pbm"

    const-string v2, "image/x-portable-bitmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "pgm"

    const-string v2, "image/x-portable-graymap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ppm"

    const-string v2, "image/x-portable-pixmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "rgb"

    const-string v2, "image/x-rgb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "igs"

    const-string v2, "model/iges"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "iges"

    const-string v2, "model/iges"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "msh"

    const-string v2, "model/mesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mesh"

    const-string v2, "model/mesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "silo"

    const-string v2, "model/mesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wrl"

    const-string v2, "model/vrml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "vrml"

    const-string v2, "model/vrml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "asc"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "rtx"

    const-string v2, "text/richtext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "rtf"

    const-string v2, "text/rtf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "sgml"

    const-string v2, "text/sgml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "sgm"

    const-string v2, "text/sgml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "tsv"

    const-string v2, "text/tab-separated-values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "etx"

    const-string v2, "text/x-setext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xsl"

    const-string v2, "text/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "xml"

    const-string v2, "text/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mpeg"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mpg"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mpe"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "qt"

    const-string v2, "video/quicktime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "mxu"

    const-string v2, "video/vnd.mpegurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "avi"

    const-string v2, "video/x-msvideo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "movie"

    const-string v2, "video/x-sgi-movie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    const-string v1, "ice"

    const-string v2, "x-conference/x-cooltalk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static getContentTypeByFileExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    if-nez v0, :cond_0

    .line 195
    const-string v0, "application/octet-stream"

    .line 196
    :cond_0
    return-object v0
.end method

.method public static getContentTypeByFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 244
    if-gez v0, :cond_1

    .line 246
    const-string v0, "application/octet-stream"

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 249
    sget-object v1, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    if-nez v0, :cond_0

    .line 252
    const-string v0, "application/octet-stream"

    goto :goto_0
.end method

.method public static isImageType(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 207
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReflashType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 231
    const-string v0, "reflash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUixmlType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 221
    const-string v0, "text/uixml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/fenghuo/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method
