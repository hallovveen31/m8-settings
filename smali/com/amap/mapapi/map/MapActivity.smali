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

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    .line 394
    const/4 v0, 0x1

    sput v0, Lcom/amap/mapapi/map/MapActivity;->MAP_MODE_VECTOR:I

    .line 395
    const/4 v0, 0x2

    sput v0, Lcom/amap/mapapi/map/MapActivity;->MAP_MODE_BITMAP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    .line 46
    new-instance v0, Lcom/amap/mapapi/map/z;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/z;-><init>(Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->e:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/amap/mapapi/map/aa;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/aa;-><init>(Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->f:Ljava/util/TimerTask;

    .line 373
    new-instance v0, Lcom/amap/mapapi/map/ab;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ab;-><init>(Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->a:Ljava/lang/Thread;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    .line 393
    sget v0, Lcom/amap/mapapi/map/MapActivity;->MAP_MODE_BITMAP:I

    iput v0, p0, Lcom/amap/mapapi/map/MapActivity;->h:I

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapActivity;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMapApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    sget v0, Lcom/amap/mapapi/core/c;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/mapapi/core/c;->f:I

    .line 340
    invoke-virtual {p1, p2, p3}, Lcom/amap/mapapi/map/MapView;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 343
    :cond_0
    sput-object p4, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    .line 345
    :cond_1
    return-void
.end method

.method public getMapMode()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/amap/mapapi/map/MapActivity;->h:I

    return v0
.end method

.method protected isLocationDisplayed()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 327
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {p0}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 109
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    .line 111
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapActivity;->f:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    sput-object v7, Lcom/amap/mapapi/map/MapActivity;->c:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 124
    iput-object v7, p0, Lcom/amap/mapapi/map/MapActivity;->d:Ljava/util/Timer;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 164
    :goto_0
    if-ge v3, v4, :cond_8

    .line 165
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    .line 166
    if-nez v0, :cond_1

    .line 164
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getChildCount()I

    move-result v5

    move v1, v2

    .line 170
    :goto_2
    if-ge v1, v5, :cond_4

    .line 171
    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 172
    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 173
    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 175
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_5

    .line 182
    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$b;->c()V

    .line 185
    :cond_5
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->d()V

    .line 186
    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->a:Lcom/mapabc/minimap/map/vmap/NativeMap;

    if-eqz v1, :cond_7

    .line 189
    :try_start_0
    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 191
    iget-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/mapapi/map/MapView;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    sget v0, Lcom/amap/mapapi/core/c;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/amap/mapapi/core/c;->f:I

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 203
    :cond_8
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 204
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 222
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    .line 223
    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 230
    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->e()V

    goto :goto_1

    .line 233
    :cond_2
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 267
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 270
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 271
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    .line 272
    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 279
    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->f()V

    goto :goto_1

    .line 281
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 246
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 247
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    .line 248
    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 255
    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->d()V

    goto :goto_1

    .line 257
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 290
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 293
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 294
    iget-object v0, p0, Lcom/amap/mapapi/map/MapActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    .line 295
    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 302
    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->a()V

    goto :goto_1

    .line 305
    :cond_2
    return-void
.end method

.method public setCachInInstalledPackaget(Z)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapActivity;->b:Z

    .line 91
    return-void
.end method

.method public setMapMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/amap/mapapi/map/MapActivity;->h:I

    .line 87
    return-void
.end method
