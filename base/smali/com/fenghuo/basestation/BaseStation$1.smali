.class final Lcom/fenghuo/basestation/BaseStation$1;
.super Landroid/telephony/PhoneStateListener;
.source "BaseStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fenghuo/basestation/BaseStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 97
    new-instance v1, Lcom/fenghuo/basestation/BaseStationBean;

    invoke-direct {v1}, Lcom/fenghuo/basestation/BaseStationBean;-><init>()V

    .line 98
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 100
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fenghuo/basestation/BaseStationBean;->setLAC(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fenghuo/basestation/BaseStationBean;->setCellID(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/fenghuo/basestation/BaseStation;->access$000()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 105
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fenghuo/basestation/BaseStationBean;->setMCC(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fenghuo/basestation/BaseStationBean;->setMNC(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {v1, v0}, Lcom/fenghuo/basestation/BaseStationBean;->setECGI(Ljava/lang/String;)V

    .line 129
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "base_station"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/fenghuo/basestation/BaseStationBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    return-void

    .line 113
    :cond_1
    :try_start_0
    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 114
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 115
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/fenghuo/basestation/BaseStationBean;->setBID(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/fenghuo/basestation/BaseStationBean;->setNID(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/fenghuo/basestation/BaseStationBean;->setSID(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/fenghuo/basestation/BaseStation;->access$000()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 122
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fenghuo/basestation/BaseStationBean;->setMCC(Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fenghuo/basestation/BaseStationBean;->setMNC(Ljava/lang/String;)V

    .line 125
    :cond_2
    invoke-virtual {v1, v0}, Lcom/fenghuo/basestation/BaseStationBean;->setECGI(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0

    .line 115
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 117
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 118
    :cond_5
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method
