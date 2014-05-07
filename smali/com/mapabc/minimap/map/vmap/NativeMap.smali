.class public Lcom/mapabc/minimap/map/vmap/NativeMap;
.super Ljava/lang/Object;
.source "NativeMap.java"


# static fields
.field public static final MINIMAP_VERSION:Ljava/lang/String; = "minimapv320"


# instance fields
.field a:[B

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    :try_start_0
    const-string v0, "minimapv320"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    .line 30
    const v0, 0xbb80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->a:[B

    .line 31
    invoke-static {}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeCreate()I

    move-result v0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    .line 25
    const v0, 0xbb80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->a:[B

    .line 26
    invoke-static {}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeCreate()I

    move-result v0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    .line 27
    return-void
.end method

.method private static native nativeCreate()I
.end method

.method private static native nativeFinalizer(I)V
.end method

.method private static native nativeGetLabelStruct(I[B)V
.end method

.method private static native nativeGetMapAngle(I)I
.end method

.method private static native nativeGetMapCenterX(I)I
.end method

.method private static native nativeGetMapCenterY(I)I
.end method

.method private static native nativeGetMapHeight(I)I
.end method

.method private static native nativeGetMapLevel(I)I
.end method

.method private static native nativeGetMapWidth(I)I
.end method

.method private static native nativeGetScreenGridNames(I[B)V
.end method

.method private static native nativeInitMap(I[BII)V
.end method

.method private static native nativePaint(II[BI)Z
.end method

.method private static native nativePx20ToScreen(IIILcom/amap/mapapi/map/bc;)V
.end method

.method private static native nativePxToScreen(IIILcom/amap/mapapi/map/bc;)V
.end method

.method private static native nativeResetLabelManager(I)V
.end method

.method private static native nativeScreenToPx(IIILcom/amap/mapapi/map/bc;)V
.end method

.method private static native nativeScreenToPx20(IIILcom/amap/mapapi/map/bc;)V
.end method

.method private static native nativeSetMapLevel(II)V
.end method

.method private static native nativeSetMapParameter(IIIII)V
.end method


# virtual methods
.method public ScreenToPx(IILcom/amap/mapapi/map/bc;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1, p2, p3}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeScreenToPx(IIILcom/amap/mapapi/map/bc;)V

    .line 80
    return-void
.end method

.method public ScreenToPx20(IILcom/amap/mapapi/map/bc;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1, p2, p3}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeScreenToPx20(IIILcom/amap/mapapi/map/bc;)V

    .line 76
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeFinalizer(I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->a:[B

    .line 46
    return-void
.end method

.method public getLabelBuffer()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->a:[B

    return-object v0
.end method

.method public getLabelStruct([B)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetLabelStruct(I[B)V

    .line 112
    return-void
.end method

.method public getMapAngle()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetMapAngle(I)I

    move-result v0

    return v0
.end method

.method public getMapCenterX()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetMapCenterX(I)I

    move-result v0

    return v0
.end method

.method public getMapCenterY()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetMapCenterY(I)I

    move-result v0

    return v0
.end method

.method public getMapHeight()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetMapHeight(I)I

    move-result v0

    return v0
.end method

.method public getMapLevel()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetMapLevel(I)I

    move-result v0

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetMapWidth(I)I

    move-result v0

    return v0
.end method

.method public getScreenGridNames()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 325
    const/16 v1, 0x800

    new-array v2, v1, [B

    .line 326
    iget v1, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v1, v2}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeGetScreenGridNames(I[B)V

    .line 328
    const/4 v1, 0x1

    aget-byte v3, v2, v0

    .line 329
    new-array v4, v3, [Ljava/lang/String;

    .line 330
    :goto_0
    if-ge v0, v3, :cond_0

    .line 331
    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v2, v1

    .line 332
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    aput-object v6, v4, v0

    .line 333
    add-int/2addr v1, v5

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-object v4
.end method

.method public initMap([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1, p2, p3}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeInitMap(I[BII)V

    .line 36
    return-void
.end method

.method public paint(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;[BI)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget v0, p1, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->b:I

    iget v1, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, v1, p2, p3}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativePaint(II[BI)Z

    move-result v0

    return v0
.end method

.method public paintLables(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;Landroid/graphics/Canvas;I)V
    .locals 30
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 117
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 119
    const/16 v17, 0x7

    .line 120
    const/16 v18, 0x4

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->getLabelBuffer()[B

    move-result-object v6

    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->b([BI)S

    move-result v7

    .line 124
    const/4 v4, 0x2

    .line 126
    const/4 v3, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    if-ge v5, v7, :cond_7

    .line 127
    new-instance v8, Lcom/mapabc/minimap/map/vmap/b;

    invoke-direct {v8}, Lcom/mapabc/minimap/map/vmap/b;-><init>()V

    .line 128
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v4, v3, 0x1

    aget-byte v9, v6, v3

    .line 131
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_0

    .line 133
    invoke-static {v6, v4}, Lcom/amap/mapapi/core/d;->b([BI)S

    move-result v11

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    add-int/lit8 v4, v4, 0x2

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/mapabc/minimap/map/vmap/b;->a:Ljava/lang/String;

    .line 137
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v6, v4

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->p:I

    .line 139
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v4

    .line 140
    const/high16 v9, -0x100

    or-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->l:I

    .line 141
    add-int/lit8 v3, v3, 0x4

    .line 142
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v4

    .line 143
    const/high16 v9, -0x100

    or-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->m:I

    .line 144
    add-int/lit8 v3, v3, 0x4

    .line 145
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->b([BI)S

    move-result v4

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->b:I

    .line 146
    add-int/lit8 v3, v3, 0x4

    .line 147
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->b([BI)S

    move-result v4

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->c:I

    .line 148
    add-int/lit8 v4, v3, 0x4

    .line 149
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v6, v4

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->n:I

    .line 150
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->n:I

    if-nez v4, :cond_2

    .line 151
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->b([BI)S

    move-result v4

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->d:I

    .line 152
    add-int/lit8 v3, v3, 0x4

    .line 126
    :cond_1
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 153
    :cond_2
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->n:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_1

    .line 155
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v6, v3

    iput v3, v8, Lcom/mapabc/minimap/map/vmap/b;->g:I

    .line 156
    invoke-static {v6, v4}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v3

    iput v3, v8, Lcom/mapabc/minimap/map/vmap/b;->j:I

    .line 157
    add-int/lit8 v3, v4, 0x4

    .line 158
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->a([BI)I

    move-result v4

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->k:I

    .line 159
    add-int/lit8 v3, v3, 0x4

    .line 160
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v6, v3

    iput v3, v8, Lcom/mapabc/minimap/map/vmap/b;->o:I

    .line 162
    invoke-static {v6, v4}, Lcom/amap/mapapi/core/d;->b([BI)S

    move-result v3

    iput v3, v8, Lcom/mapabc/minimap/map/vmap/b;->e:I

    .line 163
    add-int/lit8 v3, v4, 0x2

    .line 164
    invoke-static {v6, v3}, Lcom/amap/mapapi/core/d;->b([BI)S

    move-result v4

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->f:I

    .line 165
    add-int/lit8 v3, v3, 0x2

    .line 167
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->o:I

    if-lez v4, :cond_3

    .line 168
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->g:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->getIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 169
    if-eqz v4, :cond_3

    .line 170
    iget v9, v8, Lcom/mapabc/minimap/map/vmap/b;->b:I

    add-int/lit8 v9, v9, -0x6

    int-to-float v9, v9

    iget v10, v8, Lcom/mapabc/minimap/map/vmap/b;->c:I

    add-int/lit8 v10, v10, -0x6

    int-to-float v10, v10

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    :cond_3
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->o:I

    if-nez v4, :cond_4

    .line 176
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->b:I

    iget v9, v8, Lcom/mapabc/minimap/map/vmap/b;->e:I

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->h:I

    .line 177
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->c:I

    iget v9, v8, Lcom/mapabc/minimap/map/vmap/b;->f:I

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->i:I

    .line 179
    :cond_4
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->o:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_5

    .line 180
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->b:I

    iget v9, v8, Lcom/mapabc/minimap/map/vmap/b;->e:I

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->h:I

    .line 181
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->c:I

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->i:I

    goto :goto_2

    .line 182
    :cond_5
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->o:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_6

    .line 183
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->b:I

    add-int/lit8 v4, v4, 0x6

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->h:I

    .line 184
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->c:I

    iget v9, v8, Lcom/mapabc/minimap/map/vmap/b;->f:I

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->i:I

    goto/16 :goto_2

    .line 185
    :cond_6
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->o:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_1

    .line 186
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->b:I

    add-int/lit8 v4, v4, -0x6

    iget v9, v8, Lcom/mapabc/minimap/map/vmap/b;->e:I

    sub-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->h:I

    .line 187
    iget v4, v8, Lcom/mapabc/minimap/map/vmap/b;->c:I

    iget v9, v8, Lcom/mapabc/minimap/map/vmap/b;->f:I

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v4, v9

    iput v4, v8, Lcom/mapabc/minimap/map/vmap/b;->i:I

    goto/16 :goto_2

    .line 193
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    new-instance v19, Landroid/graphics/Paint$FontMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 198
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 199
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 201
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v22, v0

    .line 202
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v23, v0

    .line 203
    const/4 v3, 0x5

    new-array v0, v3, [[I

    move-object/from16 v24, v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aput-object v4, v24, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    aput-object v4, v24, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    aput-object v4, v24, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    aput-object v4, v24, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    aput-object v4, v24, v3

    .line 205
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 212
    const/4 v3, 0x0

    move v14, v3

    :goto_3
    const/4 v3, 0x5

    if-ge v14, v3, :cond_15

    .line 213
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ge v0, v3, :cond_9

    const/4 v3, 0x1

    if-eq v14, v3, :cond_8

    const/4 v3, 0x2

    if-eq v14, v3, :cond_8

    const/4 v3, 0x3

    if-ne v14, v3, :cond_9

    .line 212
    :cond_8
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_3

    .line 215
    :cond_9
    const/4 v3, 0x4

    if-ge v14, v3, :cond_c

    .line 216
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 223
    :goto_4
    aget-object v3, v24, v14

    const/4 v4, 0x0

    aget v26, v3, v4

    .line 224
    aget-object v3, v24, v14

    const/4 v4, 0x1

    aget v27, v3, v4

    .line 226
    const/4 v3, 0x0

    move v13, v3

    :goto_5
    move/from16 v0, v25

    if-ge v13, v0, :cond_8

    .line 227
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapabc/minimap/map/vmap/b;

    .line 228
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->l:I

    .line 229
    const/4 v7, 0x4

    if-ge v14, v7, :cond_a

    .line 230
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->m:I

    .line 232
    :cond_a
    iget v7, v3, Lcom/mapabc/minimap/map/vmap/b;->p:I

    int-to-float v7, v7

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 233
    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 236
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v7

    float-to-int v7, v4

    .line 237
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->n:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_d

    .line 238
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->h:I

    add-int v5, v4, v26

    .line 240
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->i:I

    add-int v4, v4, v27

    iget v6, v3, Lcom/mapabc/minimap/map/vmap/b;->p:I

    add-int/2addr v4, v6

    .line 247
    :goto_6
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    .line 248
    iget v6, v3, Lcom/mapabc/minimap/map/vmap/b;->d:I

    .line 249
    iget v8, v3, Lcom/mapabc/minimap/map/vmap/b;->n:I

    if-lez v8, :cond_12

    .line 251
    iget-object v6, v3, Lcom/mapabc/minimap/map/vmap/b;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 252
    move/from16 v0, v17

    if-gt v9, v0, :cond_e

    .line 253
    iget-object v3, v3, Lcom/mapabc/minimap/map/vmap/b;->a:Ljava/lang/String;

    int-to-float v6, v5

    int-to-float v7, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 226
    :cond_b
    :goto_7
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move v6, v5

    move v5, v4

    goto :goto_5

    .line 220
    :cond_c
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_4

    .line 241
    :cond_d
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->n:I

    if-nez v4, :cond_16

    .line 242
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 243
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->b:I

    add-int v5, v4, v26

    .line 244
    iget v4, v3, Lcom/mapabc/minimap/map/vmap/b;->c:I

    add-int v4, v4, v27

    goto :goto_6

    .line 256
    :cond_e
    div-int v6, v9, v17

    .line 258
    rem-int v7, v9, v17

    if-lez v7, :cond_f

    .line 259
    add-int/lit8 v6, v6, 0x1

    .line 261
    :cond_f
    rem-int v7, v9, v6

    if-nez v7, :cond_11

    .line 262
    div-int v7, v9, v6

    .line 269
    :goto_8
    const/4 v10, 0x0

    .line 271
    const/4 v8, 0x0

    move v11, v10

    move v12, v4

    move v10, v8

    :goto_9
    if-ge v10, v6, :cond_b

    .line 272
    add-int v8, v11, v7

    .line 273
    if-lt v8, v9, :cond_10

    move v8, v9

    .line 275
    :cond_10
    iget-object v0, v3, Lcom/mapabc/minimap/map/vmap/b;->a:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v0, v3, Lcom/mapabc/minimap/map/vmap/b;->h:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v11, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    iget v11, v3, Lcom/mapabc/minimap/map/vmap/b;->p:I

    add-int v11, v11, v18

    add-int/2addr v11, v12

    .line 271
    add-int/lit8 v10, v10, 0x1

    move v12, v11

    move v11, v8

    goto :goto_9

    .line 264
    :cond_11
    div-int v7, v9, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 284
    :cond_12
    const/4 v8, 0x1

    move/from16 v0, p3

    if-lt v0, v8, :cond_b

    .line 286
    const/16 v8, -0x2d

    if-ge v6, v8, :cond_14

    .line 287
    add-int/lit8 v6, v6, 0x5a

    .line 291
    :cond_13
    :goto_a
    neg-int v8, v6

    int-to-float v8, v8

    int-to-float v9, v5

    int-to-float v10, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 294
    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-int v8, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 296
    const/4 v7, 0x0

    int-to-float v5, v5

    aput v5, v23, v7

    .line 297
    const/4 v5, 0x1

    int-to-float v4, v4

    aput v4, v23, v5

    .line 298
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 299
    const/4 v4, 0x0

    aget v4, v22, v4

    float-to-int v5, v4

    .line 300
    const/4 v4, 0x1

    aget v4, v22, v4

    float-to-int v4, v4

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    .line 303
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 306
    neg-int v6, v6

    int-to-float v6, v6

    int-to-float v7, v5

    int-to-float v8, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 309
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 311
    iget-object v3, v3, Lcom/mapabc/minimap/map/vmap/b;->a:Ljava/lang/String;

    int-to-float v6, v5

    int-to-float v7, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 288
    :cond_14
    const/16 v8, 0x2d

    if-le v6, v8, :cond_13

    .line 289
    add-int/lit8 v6, v6, -0x5a

    goto :goto_a

    .line 318
    :cond_15
    return-void

    :cond_16
    move v4, v5

    move v5, v6

    goto/16 :goto_6

    .line 203
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public paintMap(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->a:[B

    invoke-virtual {p0, p1, v0, p2}, Lcom/mapabc/minimap/map/vmap/NativeMap;->paint(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;[BI)Z

    move-result v0

    return v0
.end method

.method public px20ToScreen(IILcom/amap/mapapi/map/bc;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1, p2, p3}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativePx20ToScreen(IIILcom/amap/mapapi/map/bc;)V

    .line 68
    return-void
.end method

.method public pxToScreen(IILcom/amap/mapapi/map/bc;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1, p2, p3}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativePxToScreen(IIILcom/amap/mapapi/map/bc;)V

    .line 72
    return-void
.end method

.method public resetLabelManager()V
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeResetLabelManager(I)V

    .line 50
    return-void
.end method

.method public setDrawMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    return-void
.end method

.method public setMapLevel(I)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeSetMapLevel(II)V

    .line 108
    return-void
.end method

.method public setMapParameter(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/mapabc/minimap/map/vmap/NativeMap;->b:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mapabc/minimap/map/vmap/NativeMap;->nativeSetMapParameter(IIIII)V

    .line 64
    return-void
.end method
