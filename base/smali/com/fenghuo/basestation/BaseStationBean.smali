.class public Lcom/fenghuo/basestation/BaseStationBean;
.super Ljava/lang/Object;
.source "BaseStationBean.java"


# instance fields
.field private BID:Ljava/lang/String;

.field private CellID:Ljava/lang/String;

.field private ECGI:Ljava/lang/String;

.field private LAC:Ljava/lang/String;

.field private MCC:Ljava/lang/String;

.field private MNC:Ljava/lang/String;

.field private NID:Ljava/lang/String;

.field private SID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 113
    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-object p1

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getBID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->BID:Ljava/lang/String;

    return-object v0
.end method

.method public getCellID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->CellID:Ljava/lang/String;

    return-object v0
.end method

.method public getECGI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->ECGI:Ljava/lang/String;

    return-object v0
.end method

.method public getLAC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->LAC:Ljava/lang/String;

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->MCC:Ljava/lang/String;

    return-object v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->MNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->NID:Ljava/lang/String;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fenghuo/basestation/BaseStationBean;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public setBID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->BID:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCellID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->CellID:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setECGI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->ECGI:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setLAC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->LAC:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMCC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->MCC:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setMNC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->MNC:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setNID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->NID:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fenghuo/basestation/BaseStationBean;->SID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->MCC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->MNC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :goto_1
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->ECGI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :goto_2
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->LAC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :goto_3
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->CellID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :goto_4
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->SID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :goto_5
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->NID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :goto_6
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->BID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->MCC:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->MNC:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->ECGI:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->LAC:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->CellID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->SID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 99
    :cond_6
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->NID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 104
    :cond_7
    iget-object v1, p0, Lcom/fenghuo/basestation/BaseStationBean;->BID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fenghuo/basestation/BaseStationBean;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7
.end method
