.class public Lcom/fenghuo/contact/PhoneVcards;
.super Ljava/lang/Object;
.source "PhoneVcards.java"


# static fields
.field public static final DataType_Format:Ljava/lang/String; = "%1$02d"

.field public static final DataType_Length:I = 0x2


# instance fields
.field public mAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGroup:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNote:Ljava/lang/String;

.field public mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStorage:Ljava/lang/String;

.field public photo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mStorage:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mGroup:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->photo:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mEmails:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    return-void
.end method
