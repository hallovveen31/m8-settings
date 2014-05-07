.class public interface abstract annotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
.super Ljava/lang/Object;
.source "HtcPerformance.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
        description = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/os/annotation/HtcPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HtcPerformanceTest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract description()Ljava/lang/String;
.end method

.method public abstract value()[Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
.end method
