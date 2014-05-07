.class public abstract Lcom/amap/mapapi/map/MapActivity;
.super Landroid/app/Activity;
.source "MapActivity.java"


# static fields
.field public static MAP_MODE_BITMAP:I

.field public static MAP_MODE_VECTOR:I

.field private static c:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Thread;

.field b:Z

.field private d:Ljava/util/Timer;

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/TimerTask;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/MapView;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/amap/mapapi/map/MapActivity;->MAP_MODE_VECTOR:I

    const/4 v0, 0x2

    sput v0, Lcom/amap/mapapi/map/MapActivity;->MAP_MODE_BITMAP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    new-instance v0, Lcom/amap/mapapi/map/z;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/z;-><init>(Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->e:Landroid/os/Handler;

    new-instance v0, Lcom/amap/mapapi/map/aa;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/aa;-><init>(Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->f:Ljava/util/TimerTask;

    new-instance v0, Lcom/amap/mapapi/map/ab;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ab;-><init>(Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->a:Ljava/lang/Thread;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    sget v0, Lcom/amap/mapapi/map/MapActivity;->MAP_MODE_BITMAP:I

    iput v0, p0, Lcom/amap/mapapi/map/MapActivity;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapActivity;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMapApiKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/amap/mapapi/core/c;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/mapapi/core/c;->f:I

    invoke-virtual {p1, p2, p3}, Lcom/amap/mapapi/map/MapView;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    :cond_0
    sput-object p4, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getMapMode()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/MapActivity;->h:I

    return v0
.end method

.method protected isLocationDisplayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapActivity;->f:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sput-object v7, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v7, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_8

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$b;->c()V

    :cond_5
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->d()V

    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->a:Lcom/mapabc/minimap/map/vmap/NativeMap;

    if-eqz v1, :cond_7

    :try_start_0
    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget v0, Lcom/amap/mapapi/core/c;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/amap/mapapi/core/c;->f:I

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_8
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->e()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->f()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->d()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->a()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setCachInInstalledPackaget(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapActivity;->b:Z

    return-void
.end method

.method public setMapMode(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/map/MapActivity;->h:I

    return-void
.end method
