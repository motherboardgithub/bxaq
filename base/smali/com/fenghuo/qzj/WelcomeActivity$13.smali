.class Lcom/fenghuo/qzj/WelcomeActivity$13;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/qzj/WelcomeActivity;->getAllApps()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fenghuo/qzj/WelcomeActivity;

.field final synthetic val$myAppInfo:Lcom/fenghuo/utils/AppInfo;


# direct methods
.method constructor <init>(Lcom/fenghuo/qzj/WelcomeActivity;Lcom/fenghuo/utils/AppInfo;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$13;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput-object p2, p0, Lcom/fenghuo/qzj/WelcomeActivity$13;->val$myAppInfo:Lcom/fenghuo/utils/AppInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 960
    if-eqz p1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$13;->val$myAppInfo:Lcom/fenghuo/utils/AppInfo;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fenghuo/utils/AppInfo;->setCodeSize(Ljava/lang/String;)V

    .line 966
    :cond_0
    return-void
.end method
