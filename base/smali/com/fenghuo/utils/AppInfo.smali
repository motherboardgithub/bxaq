.class public Lcom/fenghuo/utils/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private appCodeSize:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appPath:Ljava/lang/String;

.field private cacheSize:Ljava/lang/String;

.field private codeSize:Ljava/lang/String;

.field private dataSize:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private isSystemApp:Z

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private publish:Ljava/lang/String;

.field private sha1:Ljava/lang/String;

.field private sha256:Ljava/lang/String;

.field private time:J

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/AppInfo;->packageName:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/AppInfo;->appName:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/AppInfo;->versionName:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fenghuo/utils/AppInfo;->isSystemApp:Z

    return-void
.end method


# virtual methods
.method public getAppCodeSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->appCodeSize:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->appPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->cacheSize:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->codeSize:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->dataSize:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIsSystemApp()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/fenghuo/utils/AppInfo;->isSystemApp:Z

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->publish:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->sha256:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/fenghuo/utils/AppInfo;->time:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fenghuo/utils/AppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fenghuo/utils/AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCodeSize()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->appCodeSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->cacheSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->codeSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->dataSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/AppInfo;->appCodeSize:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->appName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setAppPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->appPath:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCacheSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->cacheSize:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setCodeSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->codeSize:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setDataSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->dataSize:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 147
    return-void
.end method

.method public setIsSystemApp(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/fenghuo/utils/AppInfo;->isSystemApp:Z

    .line 167
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->md5:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->packageName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setPublish(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->publish:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->sha1:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSha256(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->sha256:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTime(J)V
    .locals 3

    .prologue
    .line 86
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/fenghuo/utils/AppInfo;->time:J

    .line 87
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/fenghuo/utils/AppInfo;->versionCode:I

    .line 53
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fenghuo/utils/AppInfo;->versionName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinstalled\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->codeSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fenghuo/utils/AppInfo;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/utils/AppInfo;->appPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fenghuo/utils/AppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fenghuo/utils/AppInfo;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fenghuo/utils/AppInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fenghuo/utils/AppInfo;->getPublish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
