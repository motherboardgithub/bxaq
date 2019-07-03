.class Lcom/fenghuo/qzj/WelcomeActivity$11$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/qzj/WelcomeActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

.field final synthetic val$currentVersion:I


# direct methods
.method constructor <init>(Lcom/fenghuo/qzj/WelcomeActivity$11;I)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iput p2, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->val$currentVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v4, 0x10

    .line 789
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 791
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v1, v1, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1700(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scandir_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/error_file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 794
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1802(Lcom/fenghuo/qzj/WelcomeActivity;J)J

    .line 796
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 797
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/cjlog.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    iget v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->val$currentVersion:I

    if-lt v1, v4, :cond_0

    .line 801
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/gen_wifi_cj_flag_pie "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/cjlog.txt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cjlog_plain.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/log_file 1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/error_file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cjlog_plain.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$400(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 837
    :goto_1
    return-void

    .line 803
    :cond_0
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/gen_wifi_cj_flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/cjlog.txt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cjlog_plain.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/log_file 1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/error_file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_1
    iget v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->val$currentVersion:I

    if-lt v1, v4, :cond_4

    .line 812
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wifiscan_pie sm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v3, v3, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1900(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/error_file 1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scandir_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_2
    :goto_2
    const-string v1, "true/false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 826
    :goto_3
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v1, v1, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$2000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;

    move-result-object v1

    .line 828
    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v2, v2, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$802(Lcom/fenghuo/qzj/WelcomeActivity;Z)Z

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v4, v4, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v4}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1800(Lcom/fenghuo/qzj/WelcomeActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 830
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 831
    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v4, v4, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_3
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v1, v1, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$2100(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;)V

    .line 834
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 835
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 836
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v1, v1, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$2200(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 814
    :cond_4
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wifiscan sm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fenghuo/qzj/WelcomeActivity$11$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$11;

    iget-object v3, v3, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1900(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/error_file 1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scandir_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 823
    :cond_5
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/getVirAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/id.conf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "app_account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
