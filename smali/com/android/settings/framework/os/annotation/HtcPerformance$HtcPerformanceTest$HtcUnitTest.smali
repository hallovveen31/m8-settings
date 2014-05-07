.class public interface abstract annotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
.super Ljava/lang/Object;
.source "HtcPerformance.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
        description = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HtcUnitTest"
.end annotation


# virtual methods
.method public abstract averageTime()Ljava/lang/String;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract device()Ljava/lang/String;
.end method

.method public abstract round()J
.end method

.method public abstract totalTime()Ljava/lang/String;
.end method
