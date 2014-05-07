.class public interface abstract annotation Lcom/android/settings/framework/os/annotation/HtcExecution;
.super Ljava/lang/Object;
.source "HtcExecution.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
.end method
