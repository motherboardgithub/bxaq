.class public Lcom/fenghuo/http/response/RspEvent;
.super Ljava/lang/Object;
.source "RspEvent.java"


# static fields
.field public static final RSP_CONTACT_EVENT:I = 0x66

.field public static final RSP_ZIP_EVENT:I = 0x65


# instance fields
.field protected cmdType:I

.field public detail:Ljava/lang/String;

.field public id_:J

.field protected isValid:Z

.field public result:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fenghuo/http/response/RspEvent;->isValid:Z

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/fenghuo/http/response/RspEvent;->result:I

    .line 18
    iput p1, p0, Lcom/fenghuo/http/response/RspEvent;->cmdType:I

    .line 19
    return-void
.end method


# virtual methods
.method public getCmdType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fenghuo/http/response/RspEvent;->cmdType:I

    return v0
.end method

.method public isValidResult()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/fenghuo/http/response/RspEvent;->isValid:Z

    return v0
.end method

.method public parserResponse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/fenghuo/http/response/RspEvent;->isValid:Z

    .line 29
    return v0
.end method

.method public setDetailMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/fenghuo/http/response/RspEvent;->detail:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method public setisValid(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/fenghuo/http/response/RspEvent;->isValid:Z

    .line 52
    return-void
.end method
