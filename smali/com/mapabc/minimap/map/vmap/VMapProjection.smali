.class public Lcom/mapabc/minimap/map/vmap/VMapProjection;
.super Ljava/lang/Object;
.source "VMapProjection.java"


# static fields
.field public static final EarthCircumferenceInMeters:D = 4.007501668557849E7

.field public static final EarthRadiusInMeters:I = 0x615299

.field public static final MAXZOOMLEVEL:I = 0x14

.field public static final MaxLatitude:D = 85.0511287798

.field public static final MaxLongitude:D = 180.0

.field public static final MinLatitude:D = -85.0511287798

.field public static final MinLongitude:D = -180.0

.field public static final PixelsPerTile:I = 0x100

.field public static final TileSplitLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static Clip(DDD)D
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static LatLongToPixels(DDI)Lcom/amap/mapapi/map/bc;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v6, Lcom/amap/mapapi/map/bc;

    invoke-direct {v6}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 37
    const-wide v2, -0x3faabcba4e5ab7faL

    const-wide v4, 0x40554345b1a54806L

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->Clip(DDD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double v7, v0, v2

    .line 38
    const-wide v2, -0x3f99800000000000L

    const-wide v4, 0x4066800000000000L

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->Clip(DDD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    .line 39
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 40
    const-wide v4, 0x415854a640000000L

    mul-double/2addr v0, v4

    .line 41
    const-wide/high16 v4, 0x3ff0

    add-double/2addr v4, v2

    const-wide/high16 v7, 0x3ff0

    sub-double v2, v7, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 42
    const-wide v4, 0x414854a600000000L

    mul-double v7, v4, v2

    .line 43
    const-wide/16 v2, 0x100

    shl-long v9, v2, p4

    .line 44
    const-wide v2, 0x41831bf8457c1093L

    long-to-double v4, v9

    div-double v11, v2, v4

    .line 45
    const-wide v2, 0x41731bf8457c1093L

    add-double/2addr v0, v2

    div-double/2addr v0, v11

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    long-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Lcom/amap/mapapi/map/bc;->a:I

    .line 47
    const-wide v0, 0x41731bf8457c1093L

    sub-double/2addr v0, v7

    double-to-long v0, v0

    .line 48
    long-to-double v0, v0

    div-double/2addr v0, v11

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    long-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Lcom/amap/mapapi/map/bc;->b:I

    .line 50
    return-object v6
.end method

.method public static LatLongToPixels(III)Lcom/amap/mapapi/map/bc;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x414b774000000000L

    .line 30
    int-to-double v0, p1

    div-double/2addr v0, v4

    int-to-double v2, p0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3, p2}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->LatLongToPixels(DDI)Lcom/amap/mapapi/map/bc;

    move-result-object v0

    return-object v0
.end method

.method public static PixelsToLatLong(JJI)Lcom/mapabc/minimap/map/vmap/a;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/mapabc/minimap/map/vmap/a;

    invoke-direct {v0}, Lcom/mapabc/minimap/map/vmap/a;-><init>()V

    .line 75
    const-wide v1, 0x41831bf8457c1093L

    const/4 v3, 0x1

    shl-int/2addr v3, p4

    mul-int/lit16 v3, v3, 0x100

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 77
    long-to-double v3, p0

    mul-double/2addr v3, v1

    const-wide v5, 0x41731bf8457c1093L

    sub-double/2addr v3, v5

    .line 78
    const-wide v5, 0x41731bf8457c1093L

    long-to-double v7, p2

    mul-double/2addr v1, v7

    sub-double v1, v5, v1

    .line 79
    const-wide v5, 0x3ff921fb54442d18L

    const-wide/high16 v7, 0x4000

    neg-double v1, v1

    const-wide v9, 0x415854a640000000L

    div-double/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    sub-double v1, v5, v1

    iput-wide v1, v0, Lcom/mapabc/minimap/map/vmap/a;->b:D

    .line 81
    iget-wide v1, v0, Lcom/mapabc/minimap/map/vmap/a;->b:D

    const-wide v5, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v5

    iput-wide v1, v0, Lcom/mapabc/minimap/map/vmap/a;->b:D

    .line 82
    const-wide v1, 0x415854a640000000L

    div-double v1, v3, v1

    iput-wide v1, v0, Lcom/mapabc/minimap/map/vmap/a;->a:D

    .line 83
    iget-wide v1, v0, Lcom/mapabc/minimap/map/vmap/a;->a:D

    const-wide v3, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lcom/mapabc/minimap/map/vmap/a;->a:D

    .line 84
    return-object v0
.end method

.method public static PixelsToPixels(JJII)Lcom/amap/mapapi/map/bc;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    sub-int v0, p5, p4

    .line 57
    if-lez v0, :cond_1

    .line 59
    shr-long/2addr p0, v0

    .line 60
    shr-long/2addr p2, v0

    .line 65
    :cond_0
    :goto_0
    new-instance v0, Lcom/amap/mapapi/map/bc;

    invoke-direct {v0}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 66
    long-to-int v1, p0

    iput v1, v0, Lcom/amap/mapapi/map/bc;->a:I

    .line 67
    long-to-int v1, p2

    iput v1, v0, Lcom/amap/mapapi/map/bc;->b:I

    .line 68
    return-object v0

    .line 61
    :cond_1
    if-gez v0, :cond_0

    .line 62
    shl-long/2addr p0, v0

    .line 63
    shl-long/2addr p2, v0

    goto :goto_0
.end method

.method public static PixelsToTile(II)Lcom/amap/mapapi/map/bc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/amap/mapapi/map/bc;

    invoke-direct {v0}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 89
    div-int/lit16 v1, p0, 0x100

    iput v1, v0, Lcom/amap/mapapi/map/bc;->a:I

    .line 90
    div-int/lit16 v1, p1, 0x100

    iput v1, v0, Lcom/amap/mapapi/map/bc;->b:I

    .line 91
    return-object v0
.end method

.method public static QuadKeyToTile(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 145
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v3

    move v1, v0

    .line 148
    :goto_0
    if-gt v2, v4, :cond_0

    .line 149
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 150
    sub-int v6, v4, v2

    shl-int v6, v3, v6

    .line 151
    packed-switch v5, :pswitch_data_0

    .line 148
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :pswitch_0
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v1, v5

    .line 154
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v0, v5

    .line 155
    goto :goto_1

    .line 157
    :pswitch_1
    or-int/2addr v1, v6

    .line 158
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v0, v5

    .line 159
    goto :goto_1

    .line 161
    :pswitch_2
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v1, v5

    .line 162
    or-int/2addr v0, v6

    .line 163
    goto :goto_1

    .line 165
    :pswitch_3
    or-int/2addr v1, v6

    .line 166
    or-int/2addr v0, v6

    goto :goto_1

    .line 170
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 171
    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 172
    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 173
    return-object v2

    .line 151
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static QuadKeyToTitle(Ljava/lang/String;)Lcom/amap/mapapi/map/bc;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 113
    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v3

    move v1, v0

    .line 116
    :goto_0
    if-gt v2, v4, :cond_0

    .line 117
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 118
    sub-int v6, v4, v2

    shl-int v6, v3, v6

    .line 119
    packed-switch v5, :pswitch_data_0

    .line 116
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v1, v5

    .line 122
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v0, v5

    .line 123
    goto :goto_1

    .line 125
    :pswitch_1
    or-int/2addr v1, v6

    .line 126
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v0, v5

    .line 127
    goto :goto_1

    .line 129
    :pswitch_2
    xor-int/lit8 v5, v6, -0x1

    and-int/2addr v1, v5

    .line 130
    or-int/2addr v0, v6

    .line 131
    goto :goto_1

    .line 133
    :pswitch_3
    or-int/2addr v1, v6

    .line 134
    or-int/2addr v0, v6

    goto :goto_1

    .line 138
    :cond_0
    new-instance v2, Lcom/amap/mapapi/map/bc;

    invoke-direct {v2}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 139
    iput v1, v2, Lcom/amap/mapapi/map/bc;->a:I

    .line 140
    iput v0, v2, Lcom/amap/mapapi/map/bc;->b:I

    .line 141
    return-object v2

    .line 119
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static TileToQuadKey(III)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    .line 95
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    add-int/lit8 v0, p2, 0x0

    move v2, v0

    :goto_0
    if-lez v2, :cond_2

    .line 98
    add-int/lit8 v0, v2, -0x1

    shl-int v0, v1, v0

    int-to-long v4, v0

    .line 99
    const/4 v0, 0x0

    .line 100
    int-to-long v6, p0

    and-long/2addr v6, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    move v0, v1

    .line 103
    :cond_0
    int-to-long v6, p1

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 104
    add-int/lit8 v0, v0, 0x2

    .line 106
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
