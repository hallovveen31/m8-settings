.class public Lcom/amap/mapapi/core/r;
.super Ljava/lang/Object;
.source "RouteResource.java"


# static fields
.field public static a:Landroid/graphics/drawable/Drawable;

.field public static b:Landroid/graphics/drawable/Drawable;

.field public static c:Landroid/graphics/drawable/Drawable;

.field public static d:Landroid/graphics/drawable/Drawable;

.field public static e:Landroid/graphics/drawable/Drawable;

.field public static f:Landroid/graphics/drawable/Drawable;

.field public static g:Landroid/graphics/drawable/Drawable;

.field public static h:Landroid/graphics/drawable/Drawable;

.field public static i:Landroid/graphics/drawable/Drawable;

.field public static j:Landroid/graphics/drawable/Drawable;

.field public static k:Landroid/graphics/Paint;

.field public static l:Landroid/graphics/Paint;

.field public static m:Landroid/graphics/Paint;

.field public static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/mapapi/core/r;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/mapapi/core/r;->n:Z

    .line 132
    sget-object v0, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    sput-object v2, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_0
    sget-object v0, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    sput-object v2, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    .line 149
    :cond_1
    sget-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    sput-object v2, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    .line 157
    :cond_2
    sget-object v0, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 158
    sget-object v0, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    sput-object v2, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    .line 165
    :cond_3
    sget-object v0, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 166
    sget-object v0, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    sput-object v2, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    .line 173
    :cond_4
    sget-object v0, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 174
    sget-object v0, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 175
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    sput-object v2, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    .line 181
    :cond_5
    sget-object v0, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 182
    sget-object v0, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    sput-object v2, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_6
    sget-object v0, Lcom/amap/mapapi/core/r;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 190
    sput-object v2, Lcom/amap/mapapi/core/r;->h:Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_7
    sget-object v0, Lcom/amap/mapapi/core/r;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 199
    sput-object v2, Lcom/amap/mapapi/core/r;->i:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_8
    sget-object v0, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 208
    sget-object v0, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 209
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    sput-object v2, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;

    .line 216
    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0xe3

    const/16 v4, 0x72

    const/16 v3, 0x36

    const/high16 v2, 0x40b0

    const/4 v7, 0x1

    .line 44
    sget-boolean v0, Lcom/amap/mapapi/core/r;->n:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    .line 52
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 57
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    .line 61
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 67
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 68
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    .line 71
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 77
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 82
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 83
    const-wide/32 v2, 0x25800

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 84
    invoke-static {p0, v7}, Lcom/amap/mapapi/core/r;->a(Landroid/content/Context;I)V

    .line 91
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    const/16 v1, 0x54

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 99
    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x11

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    const/16 v3, 0x54

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    .line 106
    sget-object v4, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v5, "left_back.png"

    invoke-virtual {v4, p0, v5, v1, v0}, Lcom/amap/mapapi/core/n;->a(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->h:Landroid/graphics/drawable/Drawable;

    .line 108
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "right_back.png"

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/amap/mapapi/core/n;->a(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->i:Landroid/graphics/drawable/Drawable;

    .line 111
    sput-boolean v7, Lcom/amap/mapapi/core/r;->n:Z

    goto/16 :goto_0

    .line 85
    :cond_1
    const-wide/32 v2, 0x25800

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 86
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/amap/mapapi/core/r;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 88
    :cond_2
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/amap/mapapi/core/r;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 93
    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 100
    :array_1
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0xct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static a(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    packed-switch p1, :pswitch_data_0

    .line 287
    :try_start_0
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "start.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    .line 289
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "end.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    .line 291
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "foot.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    .line 293
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "bus_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    .line 295
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "car.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    .line 297
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "starticon.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    .line 299
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "endicon.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    .line 301
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "route_coner.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 309
    :goto_0
    return-void

    .line 223
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "start_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    .line 225
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "end_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    .line 227
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "foot_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    .line 229
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "bus_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    .line 231
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "car_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    .line 233
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "starticon_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    .line 235
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "endicon_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    .line 238
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "route_coner_w.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0

    .line 245
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "start.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    .line 247
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "end.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    .line 249
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "foot.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    .line 251
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "bus.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    .line 253
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "car.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    .line 255
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "starticon.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    .line 257
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "endicon.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    .line 259
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "route_coner.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 261
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 266
    :pswitch_2
    :try_start_3
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "start.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->a:Landroid/graphics/drawable/Drawable;

    .line 268
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "end.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->b:Landroid/graphics/drawable/Drawable;

    .line 270
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "foot.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    .line 272
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "bus.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    .line 274
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "car.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->d:Landroid/graphics/drawable/Drawable;

    .line 276
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "starticon.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    .line 278
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "endicon.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    .line 280
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v1, "route_coner_q.png"

    invoke-virtual {v0, p0, v1}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/core/r;->j:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 282
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 303
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    const/16 v1, 0x54

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 122
    sget-object v2, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    const-string v3, "left_back.png"

    invoke-virtual {v2, p0, v3, v1, v0}, Lcom/amap/mapapi/core/n;->a(Landroid/content/Context;Ljava/lang/String;[BLandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0

    .line 117
    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
