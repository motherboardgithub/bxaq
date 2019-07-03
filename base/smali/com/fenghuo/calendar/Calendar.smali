.class public Lcom/fenghuo/calendar/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"


# instance fields
.field public Description:Ljava/lang/String;

.field public EndTime:Ljava/lang/String;

.field public Event:Ljava/lang/String;

.field public StartTime:Ljava/lang/String;

.field public Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/calendar/Calendar;->Title:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/calendar/Calendar;->Event:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/calendar/Calendar;->Description:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/calendar/Calendar;->StartTime:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/calendar/Calendar;->EndTime:Ljava/lang/String;

    return-void
.end method
