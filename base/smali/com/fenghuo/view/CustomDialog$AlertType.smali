.class public final enum Lcom/fenghuo/view/CustomDialog$AlertType;
.super Ljava/lang/Enum;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fenghuo/view/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fenghuo/view/CustomDialog$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fenghuo/view/CustomDialog$AlertType;

.field public static final enum DIALOG_ALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

.field public static final enum DIALOG_ATTACHALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

.field public static final enum DIALOG_CONFIRM:Lcom/fenghuo/view/CustomDialog$AlertType;

.field public static final enum DIALOG_WAITING:Lcom/fenghuo/view/CustomDialog$AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/fenghuo/view/CustomDialog$AlertType;

    const-string v1, "DIALOG_CONFIRM"

    invoke-direct {v0, v1, v2}, Lcom/fenghuo/view/CustomDialog$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_CONFIRM:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 115
    new-instance v0, Lcom/fenghuo/view/CustomDialog$AlertType;

    const-string v1, "DIALOG_WAITING"

    invoke-direct {v0, v1, v3}, Lcom/fenghuo/view/CustomDialog$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_WAITING:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 116
    new-instance v0, Lcom/fenghuo/view/CustomDialog$AlertType;

    const-string v1, "DIALOG_ALERT"

    invoke-direct {v0, v1, v4}, Lcom/fenghuo/view/CustomDialog$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 117
    new-instance v0, Lcom/fenghuo/view/CustomDialog$AlertType;

    const-string v1, "DIALOG_ATTACHALERT"

    invoke-direct {v0, v1, v5}, Lcom/fenghuo/view/CustomDialog$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ATTACHALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fenghuo/view/CustomDialog$AlertType;

    sget-object v1, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_CONFIRM:Lcom/fenghuo/view/CustomDialog$AlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_WAITING:Lcom/fenghuo/view/CustomDialog$AlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fenghuo/view/CustomDialog$AlertType;->DIALOG_ATTACHALERT:Lcom/fenghuo/view/CustomDialog$AlertType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->$VALUES:[Lcom/fenghuo/view/CustomDialog$AlertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fenghuo/view/CustomDialog$AlertType;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/fenghuo/view/CustomDialog$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/view/CustomDialog$AlertType;

    return-object v0
.end method

.method public static values()[Lcom/fenghuo/view/CustomDialog$AlertType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/fenghuo/view/CustomDialog$AlertType;->$VALUES:[Lcom/fenghuo/view/CustomDialog$AlertType;

    invoke-virtual {v0}, [Lcom/fenghuo/view/CustomDialog$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fenghuo/view/CustomDialog$AlertType;

    return-object v0
.end method
