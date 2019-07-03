.class synthetic Lcom/fenghuo/view/CustomDialog$1;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fenghuo/view/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fenghuo$view$CustomDialog$AlertType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/fenghuo/view/CustomDialog$AlertType;->values()[Lcom/fenghuo/view/CustomDialog$AlertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fenghuo/view/CustomDialog$1;->$SwitchMap$com$fenghuo$view$CustomDialog$AlertType:[I

    :try_start_0
    sget-object v0, Lcom/fenghuo/view/CustomDialog$1;->$SwitchMap$com$fenghuo$view$CustomDialog$AlertType:[I

    sget-object v1, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_WAITING:Lcom/fenghuo/view/CustomDialog$AlertType;

    invoke-virtual {v1}, Lcom/fenghuo/view/CustomDialog$AlertType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
