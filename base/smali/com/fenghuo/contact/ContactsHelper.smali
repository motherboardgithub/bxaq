.class public Lcom/fenghuo/contact/ContactsHelper;
.super Ljava/lang/Object;
.source "ContactsHelper.java"


# static fields
.field public static final NoteDataSplitor:Ljava/lang/String; = "@"

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final RAW_PROJECTION:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/fenghuo/contact/ContactsHelper; = null

.field public static final tag:Ljava/lang/String; = "ContactsHelper"


# instance fields
.field private count:I

.field private flage:Z

.field private flage1:Z

.field public loginHandler_:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mSimContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/contact/PhoneVcards;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/contact/PhoneVcards;",
            ">;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/fenghuo/contact/ContactsHelper;->URI:Landroid/net/Uri;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fenghuo/contact/ContactsHelper;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "account_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/fenghuo/contact/ContactsHelper;->RAW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    .line 44
    iput-boolean v0, p0, Lcom/fenghuo/contact/ContactsHelper;->flage1:Z

    .line 45
    iput v0, p0, Lcom/fenghuo/contact/ContactsHelper;->count:I

    .line 46
    iput v0, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->loginHandler_:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public static final getAddress(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 581
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data2"

    aput-object v4, v2, v3

    const-string v3, "contact_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 592
    const-string v0, ""

    .line 593
    const-string v0, ""

    .line 594
    if-eqz v2, :cond_2

    .line 596
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    if-nez v0, :cond_0

    .line 601
    const-string v0, ""

    .line 603
    :cond_0
    const-string v1, "%1$02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 604
    if-nez v1, :cond_1

    .line 606
    const-string v1, ""

    .line 608
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactsHelper.getAddress(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->debugMessage(Ljava/lang/String;)V

    .line 617
    :cond_2
    :goto_1
    return-void

    .line 610
    :cond_3
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static final getEmail(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 533
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data2"

    aput-object v4, v2, v3

    const-string v3, "contact_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 542
    const-string v0, ""

    .line 543
    const-string v0, ""

    .line 544
    if-eqz v2, :cond_2

    .line 546
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    if-nez v0, :cond_0

    .line 551
    const-string v0, ""

    .line 553
    :cond_0
    const-string v1, "%1$02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 554
    if-nez v1, :cond_1

    .line 556
    const-string v1, ""

    .line 558
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactsHelper.getEmail(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->debugMessage(Ljava/lang/String;)V

    .line 567
    :cond_2
    :goto_1
    return-void

    .line 560
    :cond_3
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fenghuo/contact/ContactsHelper;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/fenghuo/contact/ContactsHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fenghuo/contact/ContactsHelper;->sInstance:Lcom/fenghuo/contact/ContactsHelper;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/fenghuo/contact/ContactsHelper;

    invoke-direct {v0, p0}, Lcom/fenghuo/contact/ContactsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fenghuo/contact/ContactsHelper;->sInstance:Lcom/fenghuo/contact/ContactsHelper;

    .line 77
    :cond_0
    sget-object v0, Lcom/fenghuo/contact/ContactsHelper;->sInstance:Lcom/fenghuo/contact/ContactsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final getNote(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 441
    const-string v7, ""

    .line 445
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 449
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "vnd.android.cursor.item/note"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p0, v4, v0

    .line 454
    const-string v3, "mimetype =? and raw_contact_id =? "

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 457
    if-eqz v2, :cond_1

    move-object v0, v7

    .line 459
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_0

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v7

    .line 468
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    :cond_3
    :goto_1
    return-object v0

    .line 470
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v7

    .line 472
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContactsHelper.getNote(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fenghuo/utils/Logger;->debugMessage(Ljava/lang/String;)V

    .line 473
    if-eqz v2, :cond_3

    .line 475
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 470
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getPhoneNumbers(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 492
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data2"

    aput-object v4, v2, v3

    const-string v3, "contact_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 501
    const-string v1, ""

    .line 502
    const-string v1, ""

    .line 503
    if-eqz v0, :cond_0

    .line 505
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    const-string v2, "%1$02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "country_code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactsHelper.getPhoneNumbers(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->debugMessage(Ljava/lang/String;)V

    .line 519
    :cond_0
    :goto_1
    return-void

    .line 512
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isSimExist()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 910
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 911
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 912
    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 926
    :goto_0
    return v0

    .line 916
    :cond_0
    if-ne v0, v1, :cond_1

    move v0, v2

    .line 918
    goto :goto_0

    .line 920
    :cond_1
    if-nez v0, :cond_2

    move v0, v2

    .line 922
    goto :goto_0

    :cond_2
    move v0, v1

    .line 926
    goto :goto_0
.end method

.method private sendMssage(I)V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 88
    iput p1, v0, Landroid/os/Message;->what:I

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v2, "count"

    iget v3, p0, Lcom/fenghuo/contact/ContactsHelper;->count:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v2, "poistion"

    iget v3, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 93
    iget-object v1, p0, Lcom/fenghuo/contact/ContactsHelper;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method


# virtual methods
.method public getAvatarByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 292
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u56fe\u7247"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v2, v7

    const-string v1, "data1"

    aput-object v1, v2, v4

    .line 296
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data2=2 and data1=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const-string v2, "contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 302
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 304
    invoke-static {v0, v2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 310
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u56fe\u7247\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 324
    return-object v5

    .line 317
    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContactHtml()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 772
    const-string v0, ""

    .line 773
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 774
    const-string v1, "<h2 id=\"Contact\"><a href=\"#PhoneInfo\" style=\"text-decoration:none;\">Contact</a></h2>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    const-string v1, "<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-size:11pt;border-collapse:collapse;\ttext-align:left;padding-left:5px;line-height:18pt;\" bordercolor=\"#111111\" width=\"100%\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    const-string v1, "<TR bgcolor=\"#C0C0C0\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    const-string v1, "<TD>ID</TD><TD>LocalType</TD><TD>Group</TD><TD>Name</TD><TD>Number</TD><TD>MobilePhone</TD><TD>HomeNum</TD><TD>Fax</TD><TD>Work</TD><TD>Email</TD><TD>Internet</TD><TD>Address</TD><TD>Note</TD></TR>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    const-string v1, "<TR>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    const-string v1, "<TD HEIGHT=\"0\"></TD><TD Style=\"WIDTH:7%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:4%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:10%\" HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD></TR>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    const-string v1, "<TR>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    const-string v1, "<TD></TD></TR>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    move-object v3, v0

    .line 783
    :goto_0
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/contact/PhoneVcards;

    .line 786
    const-string v3, "<TR>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    const-string v3, "<TD>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const-string v3, "<TD>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    const-string v3, "<TD>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    const-string v3, "<TD>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    iget-object v3, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v8, v8, v3}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 792
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    iget-object v3, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v7, v8, v3}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 794
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    iget-object v3, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v9, v9, v3}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 796
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    const/4 v3, 0x4

    const/4 v4, 0x4

    iget-object v6, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v3, v4, v6}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 798
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    iget-object v3, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v10, v10, v3}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 800
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    iget-object v3, v0, Lcom/fenghuo/contact/PhoneVcards;->mEmails:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 802
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    const-string v3, "<TD>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "</TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    iget-object v3, v0, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    invoke-static {v7, v7, v3}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 805
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, "</TD>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    const-string v4, "<TD>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v0, v0, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "</TD>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    const-string v0, "</TR>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 783
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_0
    move v4, v2

    .line 810
    :goto_1
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/contact/PhoneVcards;

    .line 813
    const-string v1, "<TR>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 814
    const-string v1, "<TD>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "</TD>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    const-string v1, "<TD>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "SIM"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "</TD>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    const-string v1, "<TD>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "</TD>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    const-string v1, "<TD>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v6, v0, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v6}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "</TD>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 820
    const-string v1, "<TD>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "</TD>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    const-string v1, "<TD>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    :cond_1
    const-string v0, "<TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 824
    const-string v0, "<TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    const-string v0, "<TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    const-string v0, "<TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    const-string v0, "<TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    const-string v0, "<TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    const-string v0, "<TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    const-string v0, "</TR>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 810
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 832
    :cond_2
    const-string v0, "</table>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    return-object v0
.end method

.method public getHelperData()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v3, 0x0

    .line 623
    const-string v0, ""

    .line 624
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    const-string v0, "<Contacts>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string v0, "<Count>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</Count>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 629
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/contact/PhoneVcards;

    .line 630
    const-string v1, "<Contact>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string v1, "<ID>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</ID>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    const-string v1, "<Storage>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "N/A"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Storage>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    const-string v1, "<Name>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Name>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    iget-boolean v1, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v8, v8, v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 642
    :goto_1
    const-string v5, "<Number>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Number>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    iget-boolean v1, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    if-eqz v1, :cond_1

    .line 645
    const/4 v1, 0x2

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v1, v8, v5}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 651
    :goto_2
    const-string v5, "<MobileNumber>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</MobileNumber>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    iget-boolean v1, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v9, v9, v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 660
    :goto_3
    const-string v5, "<HomeNumber>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</HomeNumber>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    iget-boolean v1, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v10, v10, v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 669
    :goto_4
    const-string v5, "<Fax>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Fax>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    iget-boolean v1, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    if-eqz v1, :cond_4

    .line 672
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v7, v7, v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 678
    :goto_5
    const-string v5, "<OfficeNumber>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</OfficeNumber>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    iget-boolean v1, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    if-eqz v1, :cond_5

    .line 681
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mEmails:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 690
    :goto_6
    if-nez v1, :cond_6

    .line 692
    const-string v1, ""

    .line 707
    :goto_7
    const-string v5, "<EMail>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v1}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</EMail>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    const-string v1, "<URL>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</URL>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    iget-boolean v1, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    if-eqz v1, :cond_7

    .line 712
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardAddressValueByType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 719
    :goto_8
    if-nez v1, :cond_8

    .line 721
    const-string v1, ""

    .line 736
    :goto_9
    const-string v5, "<Address>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v1}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Address>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    const-string v1, "<PhotoName>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lcom/fenghuo/contact/PhoneVcards;->photo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</PhotoName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    const-string v0, "<Back>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</Back>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    const-string v0, "</Contact>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 640
    :cond_0
    const-string v1, "02"

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 649
    :cond_1
    const-string v1, "02"

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 658
    :cond_2
    const-string v1, "01"

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 667
    :cond_3
    const-string v1, "07"

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 676
    :cond_4
    const-string v1, "03"

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 687
    :cond_5
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mEmails:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardValueByType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 696
    :cond_6
    const-string v5, "\u0000"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 697
    const v5, 0xffff

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 699
    const v5, 0xff00

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 700
    const v5, 0xcccc

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 701
    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 702
    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 703
    const/16 v5, 0xa11

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 705
    const/16 v5, 0x1b

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 717
    :cond_7
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/fenghuo/contact/ContactsTool;->getVcardAddressValueByType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 725
    :cond_8
    const-string v5, "\u0000"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 726
    const v5, 0xffff

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 728
    const v5, 0xff00

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 729
    const v5, 0xcccc

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 730
    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 731
    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 732
    const/16 v5, 0xa11

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 734
    const/16 v5, 0x1b

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_9
    move v2, v3

    .line 741
    :goto_a
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 743
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/contact/PhoneVcards;

    .line 744
    const-string v1, "<Contact>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    const-string v1, "<ID>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</ID>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    const-string v1, "<Storage>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "SIM"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Storage>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 747
    const-string v1, "<Name>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v5, v0, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Name>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 750
    const-string v1, "<Number>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Number>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    const-string v1, "<MobileNumber>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v1, v0, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</MobileNumber>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    :cond_a
    const-string v1, "<HomeNumber>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</HomeNumber>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    const-string v1, "<Fax>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Fax>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    const-string v1, "<OfficeNumber>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</OfficeNumber>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    const-string v1, "<EMail>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</EMail>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    const-string v1, "<URL>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</URL>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    const-string v1, "<Address>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "</Address>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    const-string v1, "<PhotoName>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lcom/fenghuo/contact/PhoneVcards;->photo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</PhotoName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    const-string v0, "<Back>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</Back>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    const-string v0, "</Contact>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a

    .line 763
    :cond_b
    const-string v0, "</Contacts>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    return-object v0
.end method

.method public queryContacts()V
    .locals 13

    .prologue
    const/16 v12, 0x1b

    const/16 v11, 0x14

    const/16 v10, 0xe

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    .line 335
    iput-boolean v8, p0, Lcom/fenghuo/contact/ContactsHelper;->flage1:Z

    .line 336
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 341
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fenghuo/contact/ContactsHelper;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/fenghuo/contact/ContactsHelper;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE LOCALIZED  ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 346
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 347
    const-string v2, "display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 348
    const-string v3, "has_phone_number"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 350
    const-string v4, ""

    .line 351
    iput v8, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    .line 352
    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iput v4, p0, Lcom/fenghuo/contact/ContactsHelper;->count:I

    .line 355
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 357
    iget v4, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    .line 371
    new-instance v4, Lcom/fenghuo/contact/PhoneVcards;

    invoke-direct {v4}, Lcom/fenghuo/contact/PhoneVcards;-><init>()V

    .line 372
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    .line 373
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 374
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 376
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const-string v6, "\u0000"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 377
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v6, 0xffff

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 378
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 379
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v6, 0xff00

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 380
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v6, 0xcccc

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 381
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 382
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 383
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v6, 0xa11

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 384
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 385
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 388
    :cond_2
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 390
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    iget-object v6, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/fenghuo/contact/ContactsHelper;->getNote(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 391
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 393
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    const-string v6, "\u0000"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 394
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    const v6, 0xffff

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 395
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 396
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    const v6, 0xff00

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 397
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    const v6, 0xcccc

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 398
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    .line 399
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 400
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v6, 0xa11

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 401
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 402
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 405
    :cond_3
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_5

    .line 407
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 409
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    .line 411
    :cond_4
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    iget-object v6, v4, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/fenghuo/contact/ContactsHelper;->getPhoneNumbers(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 413
    :cond_5
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    iget-object v6, v4, Lcom/fenghuo/contact/PhoneVcards;->mEmails:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/fenghuo/contact/ContactsHelper;->getEmail(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 414
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 416
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    .line 418
    :cond_6
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    iget-object v6, v4, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/fenghuo/contact/ContactsHelper;->getAddress(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 419
    const/16 v5, 0x66

    invoke-direct {p0, v5}, Lcom/fenghuo/contact/ContactsHelper;->sendMssage(I)V

    .line 420
    iget-object v5, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 422
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 423
    invoke-direct {p0}, Lcom/fenghuo/contact/ContactsHelper;->isSimExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-boolean v0, p0, Lcom/fenghuo/contact/ContactsHelper;->flage1:Z

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    const-string v1, "content://sim/adn"

    invoke-virtual {p0, v0, v1}, Lcom/fenghuo/contact/ContactsHelper;->query_Contact_Sim(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    iget-boolean v0, p0, Lcom/fenghuo/contact/ContactsHelper;->flage1:Z

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    const-string v1, "content://icc/adn"

    invoke-virtual {p0, v0, v1}, Lcom/fenghuo/contact/ContactsHelper;->query_Contact_Sim(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public query_Contact_Sim(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 841
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 845
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 846
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 847
    if-nez v1, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    :try_start_1
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 851
    const-string v2, "number"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 852
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 854
    const-string v4, ""

    .line 855
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 857
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fenghuo/contact/ContactsHelper;->flage1:Z

    .line 858
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iput v4, p0, Lcom/fenghuo/contact/ContactsHelper;->count:I

    .line 860
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    .line 861
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 862
    iget v4, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    .line 863
    new-instance v4, Lcom/fenghuo/contact/PhoneVcards;

    invoke-direct {v4}, Lcom/fenghuo/contact/PhoneVcards;-><init>()V

    .line 864
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 865
    if-eqz v5, :cond_4

    .line 867
    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 868
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const-string v6, "\u0000"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 869
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v6, 0xffff

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 870
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 871
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v6, 0xff00

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 872
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v6, 0xcccc

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 873
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 874
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 875
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v6, 0xa11

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 876
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 877
    iget-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 883
    :goto_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 884
    if-eqz v5, :cond_3

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "country_code"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 887
    iget-object v6, v4, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 890
    const/16 v5, 0x67

    invoke-direct {p0, v5}, Lcom/fenghuo/contact/ContactsHelper;->sendMssage(I)V

    .line 891
    iget-object v5, p0, Lcom/fenghuo/contact/ContactsHelper;->mSimContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 898
    :catch_0
    move-exception v0

    .line 900
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 901
    if-eqz v1, :cond_0

    .line 903
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 881
    :cond_4
    :try_start_2
    const-string v5, ""

    iput-object v5, v4, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    goto :goto_2

    .line 893
    :cond_5
    if-eqz v1, :cond_0

    .line 895
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 898
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public testReadAll(Landroid/os/Handler;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 98
    iput-object p1, p0, Lcom/fenghuo/contact/ContactsHelper;->loginHandler_:Landroid/os/Handler;

    .line 99
    iput-boolean v8, p0, Lcom/fenghuo/contact/ContactsHelper;->flage:Z

    .line 100
    iput-boolean v8, p0, Lcom/fenghuo/contact/ContactsHelper;->flage1:Z

    .line 101
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    :try_start_0
    const-string v0, "content://com.android.contacts/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 117
    :try_start_1
    const-string v1, ""

    .line 118
    const-string v1, ""

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    .line 121
    if-eqz v6, :cond_11

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/fenghuo/contact/ContactsHelper;->count:I

    .line 124
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 126
    iget v1, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fenghuo/contact/ContactsHelper;->position:I

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 129
    new-instance v10, Lcom/fenghuo/contact/PhoneVcards;

    invoke-direct {v10}, Lcom/fenghuo/contact/PhoneVcards;-><init>()V

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mID:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data14"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move v1, v8

    .line 134
    :cond_2
    :goto_2
    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 136
    const-string v2, "data1"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string v3, "data2"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v12, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_3
    :goto_3
    const-string v4, "mimetype"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 153
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const-string v3, "\u0000"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 156
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v3, 0xffff

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 157
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 158
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v3, 0xff00

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 159
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const v3, 0xcccc

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 160
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 161
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 162
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v3, 0xa11

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 163
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    .line 164
    iget-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 275
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 277
    :goto_4
    if-eqz v0, :cond_4

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_4
    if-eqz v7, :cond_5

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_5
    invoke-virtual {p0}, Lcom/fenghuo/contact/ContactsHelper;->queryContacts()V

    goto/16 :goto_0

    .line 142
    :cond_6
    if-nez v3, :cond_3

    .line 144
    :try_start_2
    const-string v3, ""

    goto/16 :goto_3

    .line 167
    :cond_7
    const-string v4, "mimetype"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 168
    if-eqz v2, :cond_2

    .line 170
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 171
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 172
    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    const-string v2, "02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "03"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "07"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 176
    const-string v2, "02"

    .line 178
    :goto_5
    iget-object v3, v10, Lcom/fenghuo/contact/PhoneVcards;->mPhones:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "country_code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 192
    :cond_8
    const-string v4, "mimetype"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",email="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 198
    iget-object v4, v10, Lcom/fenghuo/contact/PhoneVcards;->mEmails:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 200
    :cond_9
    const-string v4, "mimetype"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    iget-object v4, v10, Lcom/fenghuo/contact/PhoneVcards;->mAddress:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 208
    :cond_a
    const-string v4, "mimetype"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",note="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    iput-object v2, v10, Lcom/fenghuo/contact/PhoneVcards;->mNote:Ljava/lang/String;

    goto/16 :goto_2

    .line 216
    :cond_b
    const-string v2, "mimetype"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    const-string v2, "data14"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    add-int/lit8 v8, v1, 0x1

    .line 220
    if-eqz v2, :cond_c

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 222
    :cond_c
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    :goto_6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v4, "data15"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 225
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    new-array v4, v4, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 232
    :goto_7
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "contact"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ".jpg"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;[B)Z

    .line 236
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",phote="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",value="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    if-eqz v1, :cond_12

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v1, v8

    .line 240
    goto/16 :goto_2

    .line 228
    :catch_1
    move-exception v5

    .line 230
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 242
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/fenghuo/contact/PhoneVcards;->photo:Ljava/lang/String;

    move v1, v8

    .line 243
    goto/16 :goto_2

    .line 245
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 246
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/fenghuo/contact/ContactsHelper;->sendMssage(I)V

    .line 255
    iget-object v2, p0, Lcom/fenghuo/contact/ContactsHelper;->mTotalContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v1

    .line 257
    goto/16 :goto_1

    .line 258
    :cond_f
    if-eqz v6, :cond_10

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_10
    invoke-direct {p0}, Lcom/fenghuo/contact/ContactsHelper;->isSimExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    const-string v1, "content://icc/adn"

    invoke-virtual {p0, v0, v1}, Lcom/fenghuo/contact/ContactsHelper;->query_Contact_Sim(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    iget-boolean v0, p0, Lcom/fenghuo/contact/ContactsHelper;->flage1:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/fenghuo/contact/ContactsHelper;->mContext:Landroid/content/Context;

    const-string v1, "content://sim/adn"

    invoke-virtual {p0, v0, v1}, Lcom/fenghuo/contact/ContactsHelper;->query_Contact_Sim(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_11
    invoke-virtual {p0}, Lcom/fenghuo/contact/ContactsHelper;->queryContacts()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 275
    :catch_2
    move-exception v0

    move-object v0, v7

    goto/16 :goto_4

    :cond_12
    move v1, v8

    goto/16 :goto_2

    :cond_13
    move-object v1, v2

    goto/16 :goto_6

    :cond_14
    move-object v2, v3

    goto/16 :goto_5
.end method
