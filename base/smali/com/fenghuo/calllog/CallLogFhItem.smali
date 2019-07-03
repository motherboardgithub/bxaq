.class public Lcom/fenghuo/calllog/CallLogFhItem;
.super Ljava/lang/Object;
.source "CallLogFhItem.java"


# instance fields
.field public count:I

.field public details:Z

.field public id:Ljava/lang/String;

.field public lastTime:J

.field public mChildItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/calllog/CallLogItem;",
            ">;"
        }
    .end annotation
.end field

.field public mDepartment:Ljava/lang/String;

.field public mDuration:J

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v1, p0, Lcom/fenghuo/calllog/CallLogFhItem;->details:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/calllog/CallLogFhItem;->mChildItems:Ljava/util/ArrayList;

    .line 24
    iput v1, p0, Lcom/fenghuo/calllog/CallLogFhItem;->count:I

    .line 25
    return-void
.end method


# virtual methods
.method public addChild(Lcom/fenghuo/calllog/CallLogItem;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogFhItem;->mChildItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public getAllChilds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/calllog/CallLogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogFhItem;->mChildItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChild(I)Lcom/fenghuo/calllog/CallLogItem;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogFhItem;->mChildItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/calllog/CallLogItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/fenghuo/calllog/CallLogFhItem;->count:I

    return v0
.end method
