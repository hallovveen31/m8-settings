.class public Lcom/mapabc/minimap/map/vmap/NativeMapEngine;
.super Ljava/lang/Object;
.source "NativeMapEngine.java"


# static fields
.field public static final ICON_HEIGHT:I = 0xc

.field public static final ICON_WIDTH:I = 0xc

.field public static final MAX_ICON_SIZE:I = 0x80

.field public static final MAX_LABELAINE:I = 0x7


# instance fields
.field a:[Landroid/graphics/Bitmap;

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    :try_start_0
    const-string v0, "minimapv320"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x80

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->a:[Landroid/graphics/Bitmap;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeCreate(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    .line 50
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->setBitmapCacheMaxSize(I)V

    .line 51
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->setVecotormapCacheMaxSize(I)V

    .line 52
    return-void

    .line 33
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/io/File;

    const-string v2, "Amap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 41
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "mini_mapv2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static native nativeClearBackground(I)V
.end method

.method private static native nativeCreate(Ljava/lang/String;)I
.end method

.method private static native nativeFillBitmapBufferData(ILjava/lang/String;[B)V
.end method

.method private static native nativeFinalizer(I)V
.end method

.method private static native nativeGetBKColor(II)I
.end method

.method private static native nativeGetBitmapCacheSize(I)I
.end method

.method private static native nativeGetGridData(ILjava/lang/String;)[B
.end method

.method private static native nativeHasBitMapData(ILjava/lang/String;)Z
.end method

.method private static native nativeHasGridData(ILjava/lang/String;)Z
.end method

.method private static native nativePutBitmapData(ILjava/lang/String;[BII)V
.end method

.method private static native nativePutGridData(I[BII)V
.end method

.method private static native nativeRemoveBitmapData(ILjava/lang/String;I)V
.end method

.method private static native nativeSetBackgroundImageData(I[B)V
.end method

.method private static native nativeSetBitmapCacheMaxSize(II)V
.end method

.method private static native nativeSetIconData(II[B)V
.end method

.method private static native nativeSetStyleData(I[B)V
.end method

.method private static native nativeSetVectormapCacheMaxSize(II)V
.end method


# virtual methods
.method public clearBackground()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeClearBackground(I)V

    .line 122
    return-void
.end method

.method public destory()V
    .locals 3

    .prologue
    .line 108
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    if-nez v0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 110
    :cond_1
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeFinalizer(I)V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    .line 112
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x35

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->a:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->a:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    iget-object v1, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->a:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 112
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fillBitmapBufferData(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1, p2}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeFillBitmapBufferData(ILjava/lang/String;[B)V

    .line 166
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->destory()V

    .line 105
    return-void
.end method

.method public getBKColor(I)I
    .locals 1
    .parameter

    .prologue
    .line 149
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeGetBKColor(II)I

    move-result v0

    return v0
.end method

.method public getBitmapCacheSize()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeGetBitmapCacheSize(I)I

    move-result v0

    return v0
.end method

.method public getGridData(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeGetGridData(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hasBitMapData(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeHasBitMapData(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasGridData(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeHasGridData(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initIconData(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 79
    const-string v1, "bk.data"

    invoke-static {p1, v1}, Lcom/amap/mapapi/core/o;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->setBackgroudImageData([B)V

    .line 81
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 82
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    :goto_0
    const/16 v2, 0x35

    if-ge v0, v2, :cond_1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amap/mapapi/core/o;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    iget-object v3, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->a:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v3, v0

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method

.method public initStyleData(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    const-string v0, "style_l.data"

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x78

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_1

    .line 98
    :cond_0
    const-string v0, "style_s.data"

    .line 100
    :cond_1
    invoke-static {p1, v0}, Lcom/amap/mapapi/core/o;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->setStyleData([B)V

    .line 101
    return-void
.end method

.method public putBitmapData(Ljava/lang/String;[BII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativePutBitmapData(ILjava/lang/String;[BII)V

    .line 158
    return-void
.end method

.method public putGridData([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1, p2, p3}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativePutGridData(I[BII)V

    .line 126
    return-void
.end method

.method public removeBitmapData(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1, p2}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeRemoveBitmapData(ILjava/lang/String;I)V

    .line 162
    return-void
.end method

.method public setBackgroudImageData([B)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeSetBackgroundImageData(I[B)V

    .line 142
    return-void
.end method

.method public setBitmapCacheMaxSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 173
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeSetBitmapCacheMaxSize(II)V

    .line 174
    return-void
.end method

.method public setIconData(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1, p2}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeSetIconData(II[B)V

    .line 138
    return-void
.end method

.method public setStyleData([B)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeSetStyleData(I[B)V

    .line 146
    return-void
.end method

.method public setVecotormapCacheMaxSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->nativeSetVectormapCacheMaxSize(II)V

    .line 178
    return-void
.end method
