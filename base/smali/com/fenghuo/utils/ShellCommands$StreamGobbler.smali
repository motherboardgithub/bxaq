.class public Lcom/fenghuo/utils/ShellCommands$StreamGobbler;
.super Ljava/lang/Thread;
.source "ShellCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fenghuo/utils/ShellCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamGobbler"
.end annotation


# instance fields
.field private err:Ljava/io/InputStream;

.field private errlog:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private log:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    iput-object p3, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->in:Ljava/io/InputStream;

    .line 108
    iput-object p1, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->err:Ljava/io/InputStream;

    .line 109
    iput-object p2, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->errlog:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->errlog:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->errlog:Ljava/lang/String;

    iget-object v1, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->err:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/fenghuo/utils/ShellCommands;->loadStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->log:Ljava/lang/String;

    iget-object v1, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->in:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/fenghuo/utils/ShellCommands;->loadStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    iget-object v0, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    iget-object v0, p0, Lcom/fenghuo/utils/ShellCommands$StreamGobbler;->err:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method
