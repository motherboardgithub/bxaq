.class public interface abstract Lcom/android/internal/http/multipart/PartSource;
.super Ljava/lang/Object;
.source "PartSource.java"


# virtual methods
.method public abstract createInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLength()J
.end method
