.class Lcom/fenghuo/utils/Global$1;
.super Ljava/lang/Thread;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/utils/Global;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fenghuo/utils/Global;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fenghuo/utils/Global;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/fenghuo/utils/Global$1;->this$0:Lcom/fenghuo/utils/Global;

    iput-object p2, p0, Lcom/fenghuo/utils/Global$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 173
    iget-object v0, p0, Lcom/fenghuo/utils/Global$1;->this$0:Lcom/fenghuo/utils/Global;

    iget-object v1, p0, Lcom/fenghuo/utils/Global$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fenghuo/utils/Global;->loadWifiMac(Landroid/content/Context;)V

    .line 174
    iget-object v0, p0, Lcom/fenghuo/utils/Global$1;->this$0:Lcom/fenghuo/utils/Global;

    iget-object v1, p0, Lcom/fenghuo/utils/Global$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fenghuo/utils/Global;->LoadBlueBoothMAC(Landroid/content/Context;)V

    .line 175
    return-void
.end method
