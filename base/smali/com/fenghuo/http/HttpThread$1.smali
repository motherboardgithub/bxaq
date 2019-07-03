.class Lcom/fenghuo/http/HttpThread$1;
.super Ljava/util/TimerTask;
.source "HttpThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/http/HttpThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fenghuo/http/HttpThread;


# direct methods
.method constructor <init>(Lcom/fenghuo/http/HttpThread;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 41
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v0}, Lcom/fenghuo/http/HttpThread;->access$000(Lcom/fenghuo/http/HttpThread;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v0}, Lcom/fenghuo/http/HttpThread;->access$100(Lcom/fenghuo/http/HttpThread;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v0}, Lcom/fenghuo/http/HttpThread;->access$100(Lcom/fenghuo/http/HttpThread;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fenghuo/http/HttpThread;->access$102(Lcom/fenghuo/http/HttpThread;Ljava/util/Timer;)Ljava/util/Timer;

    .line 46
    const-string v0, "HttpThread.mTimerTask timeout"

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    iget-object v1, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v1}, Lcom/fenghuo/http/HttpThread;->access$300(Lcom/fenghuo/http/HttpThread;)Lcom/fenghuo/http/request/ReqEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v1

    invoke-static {v1}, Lcom/fenghuo/http/HttpManager;->buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/http/HttpThread;->access$202(Lcom/fenghuo/http/HttpThread;Lcom/fenghuo/http/response/RspEvent;)Lcom/fenghuo/http/response/RspEvent;

    .line 48
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v0}, Lcom/fenghuo/http/HttpThread;->access$200(Lcom/fenghuo/http/HttpThread;)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setisValid(Z)V

    .line 49
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v0}, Lcom/fenghuo/http/HttpThread;->access$200(Lcom/fenghuo/http/HttpThread;)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/fenghuo/http/response/RspEvent;->result:I

    .line 50
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v0}, Lcom/fenghuo/http/HttpThread;->access$200(Lcom/fenghuo/http/HttpThread;)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u670d\u52a1\u5668\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setDetailMsg(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v0, v2}, Lcom/fenghuo/http/HttpThread;->access$400(Lcom/fenghuo/http/HttpThread;Z)V

    .line 52
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-virtual {v0}, Lcom/fenghuo/http/HttpThread;->interrupt()V

    .line 54
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread$1;->this$0:Lcom/fenghuo/http/HttpThread;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/http/HttpThread;->access$002(Lcom/fenghuo/http/HttpThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 57
    :cond_1
    return-void
.end method
