.class public Lcom/fenghuo/view/CustomDialog;
.super Landroid/app/AlertDialog;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fenghuo/view/CustomDialog$1;,
        Lcom/fenghuo/view/CustomDialog$AlertType;
    }
.end annotation


# instance fields
.field public activityType:Ljava/lang/String;

.field private context_:Landroid/content/Context;

.field public id_:J

.field public isBottom:Z

.field public isShowMsg:Z

.field private message:Ljava/lang/String;

.field public tv:Landroid/widget/TextView;

.field private type:Lcom/fenghuo/view/CustomDialog$AlertType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->message:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isBottom:Z

    .line 28
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->context_:Landroid/content/Context;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->activityType:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    .line 33
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isShowMsg:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    const v0, 0x7f080001

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    sget-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->message:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isBottom:Z

    .line 28
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->context_:Landroid/content/Context;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->activityType:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    .line 33
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isShowMsg:Z

    .line 44
    iput-object p1, p0, Lcom/fenghuo/view/CustomDialog;->context_:Landroid/content/Context;

    .line 45
    sget-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_WAITING:Lcom/fenghuo/view/CustomDialog$AlertType;

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/fenghuo/view/CustomDialog$AlertType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    sget-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->message:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isBottom:Z

    .line 28
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->context_:Landroid/content/Context;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->activityType:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    .line 33
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isShowMsg:Z

    .line 54
    iput-object p3, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fenghuo/view/CustomDialog$AlertType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->message:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isBottom:Z

    .line 28
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->context_:Landroid/content/Context;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->activityType:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    .line 33
    iput-boolean v1, p0, Lcom/fenghuo/view/CustomDialog;->isShowMsg:Z

    .line 37
    iput-object p1, p0, Lcom/fenghuo/view/CustomDialog;->context_:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 39
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/fenghuo/view/CustomDialog;->dismiss()V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object v0, Lcom/fenghuo/view/CustomDialog$1;->$SwitchMap$com$fenghuo$view$CustomDialog$AlertType:[I

    iget-object v1, p0, Lcom/fenghuo/view/CustomDialog;->type:Lcom/fenghuo/view/CustomDialog$AlertType;

    invoke-virtual {v1}, Lcom/fenghuo/view/CustomDialog$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 62
    :pswitch_0
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/fenghuo/view/CustomDialog;->setContentView(I)V

    .line 63
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/fenghuo/view/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    .line 64
    iget-boolean v0, p0, Lcom/fenghuo/view/CustomDialog;->isShowMsg:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fenghuo/view/CustomDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 138
    :pswitch_0
    :try_start_0
    const-string v0, "LoginInActivity"

    iget-object v1, p0, Lcom/fenghuo/view/CustomDialog;->activityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->context_:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 147
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/fenghuo/view/CustomDialog;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 148
    iget-wide v0, p0, Lcom/fenghuo/view/CustomDialog;->id_:J

    invoke-static {v0, v1}, Lcom/fenghuo/http/HttpManager;->cancelConnection(J)V

    .line 149
    invoke-virtual {p0}, Lcom/fenghuo/view/CustomDialog;->dismiss()V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fenghuo/view/CustomDialog;->message:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setProperty(I)V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/fenghuo/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 126
    if-nez p1, :cond_0

    .line 127
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 128
    const/16 v2, 0x4b

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 130
    :cond_0
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    return-void
.end method

.method public setTV(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 99
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fenghuo/view/CustomDialog;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
