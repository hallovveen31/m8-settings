.class public final Lcom/android/settings/framework/util/HtcAnimationController;
.super Ljava/lang/Object;
.source "HtcAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/util/HtcAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentAnimationType()Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    .locals 9

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v0

    array-length v6, v0

    if-lt v6, v7, :cond_0

    const/4 v6, 0x0

    aget v6, v0, v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    rem-int/lit8 v6, v6, 0xa

    int-to-float v2, v6

    :cond_0
    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    const/4 v6, 0x1

    aget v6, v0, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v6, v8

    float-to-int v6, v6

    and-int/lit8 v6, v6, 0x7

    mul-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    add-float/2addr v2, v6

    :cond_1
    :goto_0
    const/4 v3, 0x0

    sget-object v6, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->getAnimationValue()F

    move-result v4

    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    cmpg-float v6, v4, v2

    if-gtz v6, :cond_2

    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    :cond_2
    move v3, v4

    sget-object v6, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->getAnimationValue()F

    move-result v4

    cmpg-float v6, v3, v4

    if-gez v6, :cond_3

    cmpg-float v6, v4, v2

    if-gtz v6, :cond_3

    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    :cond_3
    return-object v1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static setAnimationType(FF)V
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->toAnimationType(FF)Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAnimationController;->setAnimationType(Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;)V

    return-void
.end method

.method public static setAnimationType(Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;)V
    .locals 4

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->getAnimationScales()[F

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/framework/util/HtcAnimationController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
