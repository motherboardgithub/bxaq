.class public Lcom/fenghuo/http/request/ModelRequest;
.super Lcom/fenghuo/http/request/ReqEvent;
.source "ModelRequest.java"


# static fields
.field public static final MODELREQUEST:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 11
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fenghuo/http/request/ReqEvent;-><init>(I)V

    .line 13
    const-string v0, "http://%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fenghuo/http/request/ModelRequest;->reqIPPORT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/request/ModelRequest;->reqUrl:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/fenghuo/http/request/ModelRequest;->initParams()V

    .line 15
    return-void
.end method

.method private initParams()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "model"

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/utils/Global;->loadModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fenghuo/http/request/ModelRequest;->addParamMapItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "ip"

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/utils/Global;->getLocalIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fenghuo/http/request/ModelRequest;->addParamMapItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getReqUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fenghuo/http/request/ModelRequest;->reqUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getmodel?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fenghuo/http/request/ModelRequest;->getParamsMap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
