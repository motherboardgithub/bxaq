.class public Lcom/fenghuo/http/HttpThread;
.super Ljava/lang/Thread;
.source "HttpThread.java"


# static fields
.field public static final FAIL_OPERATE:I = 0x7d2

.field public static final SUCC_OPERATE:I = 0x7d1


# instance fields
.field private curTime:J

.field private event:Lcom/fenghuo/http/request/ReqEvent;

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private postresult:Ljava/lang/Boolean;

.field private rspEvent:Lcom/fenghuo/http/response/RspEvent;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/fenghuo/http/request/ReqEvent;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/HttpThread;->postresult:Ljava/lang/Boolean;

    .line 30
    iput-object p1, p0, Lcom/fenghuo/http/HttpThread;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p2, p0, Lcom/fenghuo/http/HttpThread;->event:Lcom/fenghuo/http/request/ReqEvent;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/fenghuo/http/HttpThread;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->postresult:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fenghuo/http/HttpThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fenghuo/http/HttpThread;->postresult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fenghuo/http/HttpThread;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fenghuo/http/HttpThread;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fenghuo/http/HttpThread;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fenghuo/http/HttpThread;)Lcom/fenghuo/http/response/RspEvent;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fenghuo/http/HttpThread;Lcom/fenghuo/http/response/RspEvent;)Lcom/fenghuo/http/response/RspEvent;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fenghuo/http/HttpThread;)Lcom/fenghuo/http/request/ReqEvent;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->event:Lcom/fenghuo/http/request/ReqEvent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fenghuo/http/HttpThread;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/fenghuo/http/HttpThread;->postOperationResult(Z)V

    return-void
.end method

.method private postOperationResult(Z)V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fenghuo/http/HttpThread;->mTimer:Ljava/util/Timer;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;

    iget-wide v2, p0, Lcom/fenghuo/http/HttpThread;->curTime:J

    iput-wide v2, v0, Lcom/fenghuo/http/response/RspEvent;->id_:J

    .line 107
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/fenghuo/http/HttpThread;->event:Lcom/fenghuo/http/request/ReqEvent;

    invoke-virtual {v1}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 109
    iget-object v1, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    if-eqz p1, :cond_3

    .line 111
    const/16 v1, 0x7d1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/fenghuo/http/HttpThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fenghuo/http/HttpThread;->postresult:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/fenghuo/http/HttpThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    :cond_2
    return-void

    .line 113
    :cond_3
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/http/HttpThread;->mTimer:Ljava/util/Timer;

    .line 39
    new-instance v0, Lcom/fenghuo/http/HttpThread$1;

    invoke-direct {v0, p0}, Lcom/fenghuo/http/HttpThread$1;-><init>(Lcom/fenghuo/http/HttpThread;)V

    iput-object v0, p0, Lcom/fenghuo/http/HttpThread;->mTimerTask:Ljava/util/TimerTask;

    .line 61
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fenghuo/http/HttpThread;->mTimerTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fenghuo/http/HttpThread;->curTime:J

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpThread_starttime_curTime====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fenghuo/http/HttpThread;->curTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/fenghuo/http/HttpConnectionQueue;

    iget-wide v2, p0, Lcom/fenghuo/http/HttpThread;->curTime:J

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/fenghuo/http/HttpConnectionQueue;-><init>(JZ)V

    .line 67
    sget-object v1, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/fenghuo/http/HttpThread;->curTime:J

    sput-wide v0, Lcom/fenghuo/qzj/WelcomeActivity;->id:J

    .line 73
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->event:Lcom/fenghuo/http/request/ReqEvent;

    invoke-virtual {v0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpThread_endtime_curTime====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fenghuo/http/HttpThread;->curTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;

    invoke-virtual {v0}, Lcom/fenghuo/http/response/RspEvent;->isValidResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "HttpThread.postOperationResult success"

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fenghuo/http/HttpThread;->postOperationResult(Z)V

    .line 96
    :goto_1
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->event:Lcom/fenghuo/http/request/ReqEvent;

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->doGetGcEvent(Lcom/fenghuo/http/request/ReqEvent;)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpThread.Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v4}, Lcom/fenghuo/http/HttpThread;->postOperationResult(Z)V

    goto :goto_1

    .line 79
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/fenghuo/http/HttpThread;->event:Lcom/fenghuo/http/request/ReqEvent;

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->doGetGcEvent(Lcom/fenghuo/http/request/ReqEvent;)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/HttpThread;->rspEvent:Lcom/fenghuo/http/response/RspEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "HttpThread.postOperationResult failed"

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, v4}, Lcom/fenghuo/http/HttpThread;->postOperationResult(Z)V

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
