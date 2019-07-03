.class public Lcom/fenghuo/sms/SMSItem;
.super Ljava/lang/Object;
.source "SMSItem.java"


# instance fields
.field public mCenterNumber:Ljava/lang/String;

.field public mFolder:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSMSType:Ljava/lang/String;

.field public mStorage:Ljava/lang/String;

.field public mText:Ljava/lang/String;

.field public mTime:J

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mID:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mStorage:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mSMSType:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mFolder:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mCenterNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/sms/SMSItem;->mType:Ljava/lang/String;

    .line 22
    return-void
.end method
