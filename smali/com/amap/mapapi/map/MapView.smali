.class public Lcom/amap/mapapi/map/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/MapView$a;,
        Lcom/amap/mapapi/map/MapView$LayoutParams;,
        Lcom/amap/mapapi/map/MapView$d;,
        Lcom/amap/mapapi/map/MapView$f;,
        Lcom/amap/mapapi/map/MapView$c;,
        Lcom/amap/mapapi/map/MapView$g;,
        Lcom/amap/mapapi/map/MapView$e;,
        Lcom/amap/mapapi/map/MapView$b;,
        Lcom/amap/mapapi/map/MapView$ReticleDrawMode;
    }
.end annotation


# instance fields
.field public VMapMode:Z

.field public VisInited:Z

.field a:Lcom/mapabc/minimap/map/vmap/NativeMap;

.field b:Landroid/graphics/Bitmap;

.field protected bfirstDrawed:Z

.field c:[I

.field public centerX:I

.field public centerY:I

.field d:Lcom/amap/mapapi/map/ZoomButtonsController;

.field e:Z

.field f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

.field g:Ljava/nio/ByteBuffer;

.field h:Landroid/graphics/Bitmap;

.field public height:I

.field i:Lcom/amap/mapapi/map/n;

.field public isInited:Z

.field j:Lcom/amap/mapapi/map/am;

.field private k:Lcom/amap/mapapi/map/MapActivity;

.field private l:Lcom/amap/mapapi/map/ai;

.field private m:Lcom/amap/mapapi/map/MapView$c;

.field public mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

.field public mapAngle:I

.field public mapLevel:I

.field private n:Lcom/amap/mapapi/map/MapController;

.field private o:Lcom/amap/mapapi/map/MapView$g;

.field private p:Z

.field private q:Lcom/amap/mapapi/map/v;

.field private final r:[I

.field private s:Z

.field private t:Lcom/amap/mapapi/map/TrackballGestureDetector;

.field public tileDownloadCtrl:Lcom/amap/mapapi/map/av;

.field private u:Lcom/amap/mapapi/map/TrackballGestureDetector$OnTrackballListener;

.field private v:Z

.field private w:I

.field public width:I

.field private x:Lcom/amap/mapapi/map/MapView$d;

.field private y:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->r:[I

    .line 81
    iput-boolean v3, p0, Lcom/amap/mapapi/map/MapView;->s:Z

    .line 90
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    .line 91
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->VisInited:Z

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->c:[I

    .line 97
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->v:Z

    .line 107
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->e:Z

    .line 108
    iput v2, p0, Lcom/amap/mapapi/map/MapView;->w:I

    .line 2052
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->x:Lcom/amap/mapapi/map/MapView$d;

    .line 2117
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    .line 2118
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    .line 2119
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 2120
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    .line 2121
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    .line 2122
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    .line 2124
    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iput v2, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    .line 2127
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    .line 158
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView;->m()V

    .line 159
    invoke-virtual {p0, v3}, Lcom/amap/mapapi/map/MapView;->setClickable(Z)V

    .line 160
    instance-of v0, p1, Lcom/amap/mapapi/map/MapActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 161
    check-cast v0, Lcom/amap/mapapi/map/MapActivity;

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/amap/mapapi/map/MapActivity;->a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MapViews can only be created inside instances of MapActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    nop

    :array_0
    .array-data 0x4
        0xc0t 0xc6t 0x2dt 0x0t
        0x60t 0xe3t 0x16t 0x0t
        0x0t 0x35t 0xct 0x0t
        0x80t 0x1at 0x6t 0x0t
        0x40t 0xdt 0x3t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x50t 0xc3t 0x0t 0x0t
        0xa8t 0x61t 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/mapapi/map/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->r:[I

    .line 81
    iput-boolean v7, p0, Lcom/amap/mapapi/map/MapView;->s:Z

    .line 90
    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    .line 91
    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapView;->VisInited:Z

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->c:[I

    .line 97
    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapView;->v:Z

    .line 107
    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapView;->e:Z

    .line 108
    iput v4, p0, Lcom/amap/mapapi/map/MapView;->w:I

    .line 2052
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->x:Lcom/amap/mapapi/map/MapView$d;

    .line 2117
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    .line 2118
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    .line 2119
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 2120
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    .line 2121
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    .line 2122
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    .line 2124
    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iput v4, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    .line 2127
    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    .line 193
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView;->m()V

    .line 194
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    .line 195
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    move v3, v4

    move-object v2, v1

    .line 198
    :goto_0
    if-ge v3, v5, :cond_3

    .line 199
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v6, "amapapikey"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 198
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 202
    :cond_0
    const-string v6, "useragent"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    .line 204
    :cond_1
    const-string v6, "clickable"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 209
    :cond_3
    new-array v0, v7, [I

    const v3, 0x1010211

    aput v3, v0, v4

    .line 210
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 211
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xf

    if-ge v3, v5, :cond_5

    .line 212
    :cond_4
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    :cond_5
    instance-of v0, p1, Lcom/amap/mapapi/map/MapActivity;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/amap/mapapi/map/MapActivity;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/amap/mapapi/map/MapActivity;->a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 216
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MapViews can only be created inside instances of MapActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    nop

    :array_0
    .array-data 0x4
        0xc0t 0xc6t 0x2dt 0x0t
        0x60t 0xe3t 0x16t 0x0t
        0x0t 0x35t 0xct 0x0t
        0x80t 0x1at 0x6t 0x0t
        0x40t 0xdt 0x3t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x50t 0xc3t 0x0t 0x0t
        0xa8t 0x61t 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->r:[I

    .line 81
    iput-boolean v3, p0, Lcom/amap/mapapi/map/MapView;->s:Z

    .line 90
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    .line 91
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->VisInited:Z

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->c:[I

    .line 97
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->v:Z

    .line 107
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->e:Z

    .line 108
    iput v1, p0, Lcom/amap/mapapi/map/MapView;->w:I

    .line 2052
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->x:Lcom/amap/mapapi/map/MapView$d;

    .line 2117
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    .line 2118
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    .line 2119
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 2120
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    .line 2121
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    .line 2122
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    .line 2124
    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iput v1, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    .line 2127
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    .line 170
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView;->m()V

    .line 171
    invoke-virtual {p0, v3}, Lcom/amap/mapapi/map/MapView;->setClickable(Z)V

    .line 172
    instance-of v0, p1, Lcom/amap/mapapi/map/MapActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/amap/mapapi/map/MapActivity;

    invoke-virtual {v0, p0, p1, v2, p2}, Lcom/amap/mapapi/map/MapActivity;->a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MapViews can only be created inside instances of MapActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    nop

    :array_0
    .array-data 0x4
        0xc0t 0xc6t 0x2dt 0x0t
        0x60t 0xe3t 0x16t 0x0t
        0x0t 0x35t 0xct 0x0t
        0x80t 0x1at 0x6t 0x0t
        0x40t 0xdt 0x3t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x50t 0xc3t 0x0t 0x0t
        0xa8t 0x61t 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/amap/mapapi/map/MapView;->w:I

    return p1
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapActivity;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->k:Lcom/amap/mapapi/map/MapActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    return-object v0
.end method

.method private c(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xa

    const/4 v1, 0x6

    const/4 v0, 0x2

    const/16 v4, 0xe

    .line 2454
    packed-switch p1, :pswitch_data_0

    .line 2497
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2466
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2468
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2470
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2472
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 2474
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 2476
    goto :goto_0

    :pswitch_7
    move v0, v3

    .line 2478
    goto :goto_0

    :pswitch_8
    move v0, v3

    .line 2480
    goto :goto_0

    :pswitch_9
    move v0, v4

    .line 2482
    goto :goto_0

    :pswitch_a
    move v0, v4

    .line 2484
    goto :goto_0

    :pswitch_b
    move v0, v4

    .line 2486
    goto :goto_0

    :pswitch_c
    move v0, v4

    .line 2488
    goto :goto_0

    :pswitch_d
    move v0, v4

    .line 2490
    goto :goto_0

    :pswitch_e
    move v0, v4

    .line 2492
    goto :goto_0

    :pswitch_f
    move v0, v4

    .line 2494
    goto :goto_0

    .line 2454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic c(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapView$g;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/mapapi/map/MapView;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/amap/mapapi/map/MapView;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->w:I

    return v0
.end method

.method static synthetic g(Lcom/amap/mapapi/map/MapView;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->w:I

    return v0
.end method

.method static synthetic g()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/amap/mapapi/map/MapView;->PRESSED_ENABLED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic h()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/amap/mapapi/map/MapView;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic i()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/amap/mapapi/map/MapView;->EMPTY_STATE_SET:[I

    return-object v0
.end method

.method static synthetic j()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/amap/mapapi/map/MapView;->PRESSED_ENABLED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic k()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/amap/mapapi/map/MapView;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic l()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/amap/mapapi/map/MapView;->EMPTY_STATE_SET:[I

    return-object v0
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 130
    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 132
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 133
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setLayerType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    :goto_1
    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 142
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_2
    return-void

    .line 132
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 474
    new-instance v0, Lcom/amap/mapapi/map/MapView$c;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->k:Lcom/amap/mapapi/map/MapActivity;

    invoke-direct {v0, p0, v1}, Lcom/amap/mapapi/map/MapView$c;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    .line 475
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 478
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 479
    return-void
.end method


# virtual methods
.method protected VdestoryMap()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2154
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    if-eqz v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/n;->b()V

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    if-eqz v0, :cond_1

    .line 2159
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/av;->c()V

    .line 2160
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    if-eqz v0, :cond_2

    .line 2162
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/am;->a()V

    .line 2163
    const/4 v0, 0x1

    .line 2165
    :goto_0
    if-eqz v0, :cond_2

    .line 2167
    :try_start_0
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/am;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2170
    goto :goto_0

    .line 2173
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 2174
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2175
    iput-object v3, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 2176
    iput-object v3, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    .line 2178
    :cond_3
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    .line 2180
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    if-eqz v0, :cond_4

    .line 2181
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->destory()V

    .line 2182
    iput-object v3, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    .line 2185
    :cond_4
    return-void

    .line 2169
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected Vinit()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 2132
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    if-nez v0, :cond_0

    .line 2135
    const/high16 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    .line 2136
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 2137
    new-instance v0, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    .line 2138
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->initIconData(Landroid/content/Context;)V

    .line 2139
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->initStyleData(Landroid/content/Context;)V

    .line 2140
    new-instance v0, Lcom/amap/mapapi/map/n;

    invoke-direct {v0}, Lcom/amap/mapapi/map/n;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    .line 2141
    new-instance v0, Lcom/amap/mapapi/map/av;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/av;-><init>(Lcom/amap/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    .line 2142
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    iput-object p0, v0, Lcom/amap/mapapi/map/n;->e:Lcom/amap/mapapi/map/MapView;

    .line 2143
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/n;->start()V

    .line 2144
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/av;->start()V

    .line 2145
    new-instance v0, Lcom/amap/mapapi/map/am;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/am;-><init>(Lcom/amap/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    .line 2146
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/am;->start()V

    .line 2147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    .line 2150
    :cond_0
    return-void
.end method

.method a()Lcom/amap/mapapi/map/ai;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    return-object v0
.end method

.method a(I)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput p1, p0, Lcom/amap/mapapi/map/MapView;->w:I

    .line 384
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 225
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    .line 227
    :try_start_0
    check-cast p1, Lcom/amap/mapapi/map/MapActivity;

    iput-object p1, p0, Lcom/amap/mapapi/map/MapView;->k:Lcom/amap/mapapi/map/MapActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView;->n()V

    .line 235
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->k:Lcom/amap/mapapi/map/MapActivity;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapActivity;->b:Z

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->e:Z

    .line 237
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->k:Lcom/amap/mapapi/map/MapActivity;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapActivity;->getMapMode()I

    move-result v0

    .line 239
    sget v1, Lcom/amap/mapapi/map/MapActivity;->MAP_MODE_VECTOR:I

    if-ne v0, v1, :cond_0

    .line 240
    iput-boolean v3, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    .line 242
    :cond_0
    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapView;->setBackgroundColor(I)V

    .line 244
    new-instance v0, Lcom/amap/mapapi/map/ai;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->k:Lcom/amap/mapapi/map/MapActivity;

    invoke-direct {v0, v1, p0, p2}, Lcom/amap/mapapi/map/ai;-><init>(Lcom/amap/mapapi/map/MapActivity;Lcom/amap/mapapi/map/MapView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    .line 246
    new-instance v0, Lcom/amap/mapapi/map/MapView$g;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/mapapi/map/MapView$g;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    .line 247
    new-instance v0, Lcom/amap/mapapi/map/MapView$e;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/MapView$e;-><init>(Lcom/amap/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    .line 248
    new-instance v0, Lcom/amap/mapapi/map/MapController;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/MapController;-><init>(Lcom/amap/mapapi/map/ai;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    .line 249
    invoke-virtual {p0, v3}, Lcom/amap/mapapi/map/MapView;->setEnabled(Z)V

    .line 250
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can only be created inside instances of MapActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/amap/mapapi/map/bc;Lcom/amap/mapapi/map/bc;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7fffffff

    const/high16 v8, -0x8000

    .line 2600
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    .line 2601
    iget v2, p0, Lcom/amap/mapapi/map/MapView;->width:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/amap/mapapi/map/MapView;->height:I

    int-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2602
    iget v3, p0, Lcom/amap/mapapi/map/MapView;->width:I

    int-to-double v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/amap/mapapi/map/MapView;->height:I

    int-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    add-double/2addr v0, v3

    double-to-int v0, v0

    .line 2604
    new-instance v1, Lcom/amap/mapapi/map/bc;

    invoke-direct {v1}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2606
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/amap/mapapi/map/MapView;->width:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/amap/mapapi/map/MapView;->height:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v3, v1}, Lcom/amap/mapapi/map/MapView;->getPixelPnt(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;)V

    .line 2607
    iget v3, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2608
    iget v4, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2609
    iget v5, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2610
    iget v6, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2612
    new-instance v7, Landroid/graphics/Point;

    iget v8, p0, Lcom/amap/mapapi/map/MapView;->width:I

    add-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/amap/mapapi/map/MapView;->height:I

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v7, v1}, Lcom/amap/mapapi/map/MapView;->getPixelPnt(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;)V

    .line 2613
    iget v7, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2614
    iget v7, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2615
    iget v7, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2616
    iget v7, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2618
    new-instance v7, Landroid/graphics/Point;

    iget v8, p0, Lcom/amap/mapapi/map/MapView;->width:I

    add-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/amap/mapapi/map/MapView;->height:I

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v7, v1}, Lcom/amap/mapapi/map/MapView;->getPixelPnt(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;)V

    .line 2619
    iget v7, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2620
    iget v7, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2621
    iget v7, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2622
    iget v7, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2624
    new-instance v7, Landroid/graphics/Point;

    iget v8, p0, Lcom/amap/mapapi/map/MapView;->width:I

    sub-int v2, v8, v2

    div-int/lit8 v2, v2, 0x2

    iget v8, p0, Lcom/amap/mapapi/map/MapView;->height:I

    add-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v7, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v7, v1}, Lcom/amap/mapapi/map/MapView;->getPixelPnt(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;)V

    .line 2625
    iget v0, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2626
    iget v2, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2627
    iget v3, v1, Lcom/amap/mapapi/map/bc;->a:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2628
    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2630
    iput v0, p1, Lcom/amap/mapapi/map/bc;->a:I

    .line 2631
    iput v2, p1, Lcom/amap/mapapi/map/bc;->b:I

    .line 2632
    iput v3, p2, Lcom/amap/mapapi/map/bc;->a:I

    .line 2633
    iput v1, p2, Lcom/amap/mapapi/map/bc;->b:I

    .line 2634
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2672
    new-instance v1, Lcom/amap/mapapi/map/bc;

    invoke-direct {v1}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2673
    new-instance v2, Lcom/amap/mapapi/map/bc;

    invoke-direct {v2}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2674
    iget v3, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2686
    :cond_0
    :goto_0
    return v0

    .line 2676
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/bc;Lcom/amap/mapapi/map/bc;)V

    .line 2677
    iget v3, v1, Lcom/amap/mapapi/map/bc;->a:I

    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v3, v1}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v1

    .line 2679
    iget v3, v2, Lcom/amap/mapapi/map/bc;->a:I

    iget v2, v2, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v3, v2}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v2

    .line 2681
    invoke-static {p1}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->QuadKeyToTile(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v3

    .line 2682
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v1, Lcom/amap/mapapi/map/bc;->a:I

    if-lt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v2, Lcom/amap/mapapi/map/bc;->a:I

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    if-lt v4, v1, :cond_0

    iget v1, v3, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/amap/mapapi/map/bc;->b:I

    if-gt v1, v2, :cond_0

    .line 2684
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(I)I
    .locals 1
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->b()I

    move-result p1

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->a()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->a()I

    move-result p1

    .line 776
    :cond_1
    return p1
.end method

.method b()Lcom/amap/mapapi/map/MapView$c;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->e()V

    .line 450
    return-void
.end method

.method public canCoverCenter()Z
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMapCenter()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/core/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 803
    instance-of v0, p1, Lcom/amap/mapapi/map/MapView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 860
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView$c;->a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView$c;->a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView$c;->b(Lcom/amap/mapapi/map/MapView$c;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 862
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView$c;->a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView$c;->c(Lcom/amap/mapapi/map/MapView$c;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 863
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v3}, Lcom/amap/mapapi/map/MapView$c;->a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/mapapi/map/MapView$c;->a(Lcom/amap/mapapi/map/MapView$c;I)I

    .line 864
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v3}, Lcom/amap/mapapi/map/MapView$c;->a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/mapapi/map/MapView$c;->b(Lcom/amap/mapapi/map/MapView$c;I)I

    .line 865
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, v3, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, v3, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView$c;->a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 875
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/ai$d;->b(Lcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    .line 874
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 745
    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->c()V

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->VdestoryMap()V

    .line 751
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai;->a()V

    .line 752
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapController;->stopAnimation(Z)V

    .line 754
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController;->stopPanning()V

    .line 756
    :cond_1
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    .line 757
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    .line 758
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    .line 759
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$e;->a()V

    .line 761
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->c()V

    .line 765
    iput-object v2, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    .line 767
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 790
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 791
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 794
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 797
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 799
    return-void
.end method

.method public displayZoomControls(Z)V
    .locals 1
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$g;->c(Z)V

    .line 466
    return-void
.end method

.method e()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2640
    new-instance v0, Lcom/amap/mapapi/map/bc;

    invoke-direct {v0}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2641
    new-instance v2, Lcom/amap/mapapi/map/bc;

    invoke-direct {v2}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2642
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2644
    iget v4, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-direct {p0, v4}, Lcom/amap/mapapi/map/MapView;->c(I)I

    move-result v4

    .line 2645
    iget v5, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    sub-int/2addr v5, v4

    .line 2647
    invoke-virtual {p0, v0, v2}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/bc;Lcom/amap/mapapi/map/bc;)V

    .line 2649
    iget v6, v0, Lcom/amap/mapapi/map/bc;->a:I

    shr-int/2addr v6, v5

    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    shr-int/2addr v0, v5

    invoke-static {v6, v0}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v6

    .line 2652
    iget v0, v2, Lcom/amap/mapapi/map/bc;->a:I

    shr-int/2addr v0, v5

    iget v2, v2, Lcom/amap/mapapi/map/bc;->b:I

    shr-int/2addr v2, v5

    invoke-static {v0, v2}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v0

    .line 2656
    iget v2, v0, Lcom/amap/mapapi/map/bc;->a:I

    iget v5, v6, Lcom/amap/mapapi/map/bc;->a:I

    sub-int v5, v2, v5

    .line 2657
    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    iget v2, v6, Lcom/amap/mapapi/map/bc;->b:I

    sub-int v7, v0, v2

    .line 2658
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    .line 2659
    :goto_0
    if-gt v2, v7, :cond_1

    move v0, v1

    .line 2660
    :goto_1
    if-gt v0, v5, :cond_0

    .line 2662
    iget v8, v6, Lcom/amap/mapapi/map/bc;->a:I

    add-int/2addr v8, v0

    iget v9, v6, Lcom/amap/mapapi/map/bc;->b:I

    add-int/2addr v9, v2

    invoke-static {v8, v9, v4}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->TileToQuadKey(III)Ljava/lang/String;

    move-result-object v8

    .line 2664
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2659
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2667
    :cond_1
    return-object v3
.end method

.method f()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2693
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2694
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2695
    new-instance v1, Lcom/amap/mapapi/map/bc;

    invoke-direct {v1}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2696
    new-instance v2, Lcom/amap/mapapi/map/bc;

    invoke-direct {v2}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2697
    new-instance v5, Lcom/amap/mapapi/map/bc;

    invoke-direct {v5}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2698
    invoke-virtual {p0, v1, v2}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/bc;Lcom/amap/mapapi/map/bc;)V

    .line 2700
    new-instance v6, Landroid/graphics/Point;

    iget v7, p0, Lcom/amap/mapapi/map/MapView;->width:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/amap/mapapi/map/MapView;->height:I

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v6, v5}, Lcom/amap/mapapi/map/MapView;->getPixelPnt(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;)V

    .line 2702
    iget v6, v1, Lcom/amap/mapapi/map/bc;->a:I

    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v6, v1}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v6

    .line 2704
    iget v1, v2, Lcom/amap/mapapi/map/bc;->a:I

    iget v2, v2, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v1, v2}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v1

    .line 2706
    iget v2, v5, Lcom/amap/mapapi/map/bc;->a:I

    iget v5, v5, Lcom/amap/mapapi/map/bc;->b:I

    invoke-static {v2, v5}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v2

    .line 2709
    iget v5, v1, Lcom/amap/mapapi/map/bc;->a:I

    iget v7, v6, Lcom/amap/mapapi/map/bc;->a:I

    sub-int/2addr v5, v7

    .line 2710
    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    iget v7, v6, Lcom/amap/mapapi/map/bc;->b:I

    sub-int v7, v1, v7

    .line 2712
    new-instance v8, Lcom/amap/mapapi/map/MapView$a;

    iget v1, v2, Lcom/amap/mapapi/map/bc;->a:I

    iget v2, v2, Lcom/amap/mapapi/map/bc;->b:I

    invoke-direct {v8, p0, v1, v2}, Lcom/amap/mapapi/map/MapView$a;-><init>(Lcom/amap/mapapi/map/MapView;II)V

    move v2, v0

    .line 2715
    :goto_0
    if-gt v2, v7, :cond_1

    move v1, v0

    .line 2716
    :goto_1
    if-gt v1, v5, :cond_0

    .line 2717
    new-instance v9, Lcom/amap/mapapi/map/bc;

    iget v10, v6, Lcom/amap/mapapi/map/bc;->a:I

    add-int/2addr v10, v1

    iget v11, v6, Lcom/amap/mapapi/map/bc;->b:I

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Lcom/amap/mapapi/map/bc;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2716
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2715
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2721
    :cond_1
    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v0

    .line 2722
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2723
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/bc;

    .line 2724
    iget v2, v0, Lcom/amap/mapapi/map/bc;->a:I

    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    iget v5, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-static {v2, v0, v5}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->TileToQuadKey(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2727
    :cond_2
    return-object v4
.end method

.method protected fromScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 11
    .parameter

    .prologue
    const-wide/high16 v9, 0x4000

    .line 2516
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2517
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v1

    .line 2518
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getHeight()I

    move-result v2

    .line 2519
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2520
    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2521
    float-to-double v5, v4

    float-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 2522
    float-to-double v7, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v3, v4

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 2523
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMapAngle()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 2524
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    shr-int/lit8 v1, v1, 0x1

    int-to-double v9, v1

    add-double/2addr v7, v9

    double-to-float v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2525
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    shr-int/lit8 v1, v2, 0x1

    int-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2527
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->generateDefaultLayoutParams()Lcom/amap/mapapi/map/MapView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/amap/mapapi/map/MapView$LayoutParams;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 482
    new-instance v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    const/16 v5, 0x33

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IIIII)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 825
    new-instance v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->k:Lcom/amap/mapapi/map/MapActivity;

    invoke-direct {v0, v1, p1}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 819
    new-instance v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2745
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2747
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2749
    if-eqz v0, :cond_2

    .line 2752
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2754
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    .line 2756
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->y:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-object v0, v1

    .line 2773
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/mapapi/core/j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bmserver/VMMV2?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2778
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2779
    if-eqz v0, :cond_1

    .line 2780
    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2787
    :goto_1
    return-object v0

    .line 2759
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 2760
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 2761
    if-eqz v2, :cond_2

    .line 2762
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 2783
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2785
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getController()Lcom/amap/mapapi/map/MapController;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    return-object v0
.end method

.method public getDebugVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/amap/mapapi/core/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected getGridLevelOff(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 2437
    sparse-switch p1, :sswitch_data_0

    .line 2450
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 2444
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 2446
    goto :goto_0

    .line 2448
    :sswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 2437
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_1
        0xc -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public getLatitudeSpan()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$e;->a()I

    move-result v0

    return v0
.end method

.method public getLayerMgr()Lcom/amap/mapapi/map/v;
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->isVectorMap()Z

    move-result v0

    .line 360
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 367
    :goto_0
    return-object v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->q:Lcom/amap/mapapi/map/v;

    if-nez v0, :cond_1

    .line 364
    new-instance v0, Lcom/amap/mapapi/map/v;

    invoke-direct {v0}, Lcom/amap/mapapi/map/v;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->q:Lcom/amap/mapapi/map/v;

    .line 365
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->q:Lcom/amap/mapapi/map/v;

    invoke-virtual {v0, p0}, Lcom/amap/mapapi/map/v;->a(Lcom/amap/mapapi/map/MapView;)V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->q:Lcom/amap/mapapi/map/v;

    goto :goto_0
.end method

.method public getLongitudeSpan()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$e;->b()I

    move-result v0

    return v0
.end method

.method public getMapAngle()I
    .locals 1

    .prologue
    .line 2202
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_0

    .line 2203
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    .line 2205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMapCenter()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->f()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->a()I

    move-result v0

    return v0
.end method

.method public getMetersPerPixel(I)D
    .locals 2
    .parameter

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMinZoomLevel()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMaxZoomLevel()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v0, v0, Lcom/amap/mapapi/map/ad;->h:[D

    aget-wide v0, v0, p1

    .line 1004
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMinZoomLevel()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->b()I

    move-result v0

    return v0
.end method

.method public final getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPixel20Pnt(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2592
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    rsub-int/lit8 v0, v0, 0x14

    .line 2593
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->width:I

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    shl-int/2addr v1, v0

    add-int/2addr v1, p3

    iput v1, p2, Lcom/amap/mapapi/map/bc;->a:I

    .line 2594
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->height:I

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    shl-int v0, v1, v0

    add-int/2addr v0, p4

    iput v0, p2, Lcom/amap/mapapi/map/bc;->b:I

    .line 2596
    return-void
.end method

.method protected getPixel20Pnt2(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v6, 0x4000

    const-wide/high16 v8, 0x3fe0

    .line 2575
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    rsub-int/lit8 v0, v0, 0x14

    .line 2576
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->width:I

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    shl-int/2addr v1, v0

    .line 2577
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/amap/mapapi/map/MapView;->height:I

    shr-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    shl-int v0, v2, v0

    .line 2578
    int-to-double v2, v0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 2579
    int-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2580
    iget v4, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    int-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    .line 2581
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    add-double/2addr v4, v8

    double-to-int v4, v4

    add-int/2addr v4, p3

    iput v4, p2, Lcom/amap/mapapi/map/bc;->a:I

    .line 2582
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v8

    double-to-int v0, v0

    add-int/2addr v0, p4

    iput v0, p2, Lcom/amap/mapapi/map/bc;->b:I

    .line 2583
    return-void
.end method

.method protected getPixelPnt(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2563
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->centerX:I

    iget v1, p0, Lcom/amap/mapapi/map/MapView;->centerY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amap/mapapi/map/MapView;->getPixel20Pnt2(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;II)V

    .line 2564
    iget v0, p2, Lcom/amap/mapapi/map/bc;->a:I

    iget v1, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    rsub-int/lit8 v1, v1, 0x14

    shr-int/2addr v0, v1

    iput v0, p2, Lcom/amap/mapapi/map/bc;->a:I

    .line 2565
    iget v0, p2, Lcom/amap/mapapi/map/bc;->b:I

    iget v1, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    rsub-int/lit8 v1, v1, 0x14

    shr-int/2addr v0, v1

    iput v0, p2, Lcom/amap/mapapi/map/bc;->b:I

    .line 2566
    return-void
.end method

.method public getProjection()Lcom/amap/mapapi/map/Projection;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    return-object v0
.end method

.method public getReleaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/amap/mapapi/core/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getScale(I)I
    .locals 2
    .parameter

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMinZoomLevel()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMaxZoomLevel()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 993
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->r:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->r:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getScreenPnt(IILandroid/graphics/Point;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2532
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    rsub-int/lit8 v0, v0, 0x14

    shl-int v0, p1, v0

    iget v1, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    rsub-int/lit8 v1, v1, 0x14

    shl-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/amap/mapapi/map/MapView;->getScreenPntBy20Pixel(IILandroid/graphics/Point;)V

    .line 2535
    return-void
.end method

.method protected getScreenPntBy20Pixel(IIILandroid/graphics/Point;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2540
    rsub-int/lit8 v0, p3, 0x14

    .line 2541
    shr-int v1, p1, v0

    iput v1, p4, Landroid/graphics/Point;->x:I

    .line 2542
    shr-int v1, p2, v0

    iput v1, p4, Landroid/graphics/Point;->y:I

    .line 2544
    iget v1, p0, Lcom/amap/mapapi/map/MapView;->width:I

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->centerX:I

    shr-int/2addr v2, v0

    sub-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iput v1, p4, Landroid/graphics/Point;->x:I

    .line 2545
    iget v1, p0, Lcom/amap/mapapi/map/MapView;->height:I

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->centerY:I

    shr-int v0, v2, v0

    sub-int v0, v1, v0

    iget v1, p4, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->y:I

    .line 2546
    return-void
.end method

.method protected getScreenPntBy20Pixel(IILandroid/graphics/Point;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2551
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    rsub-int/lit8 v0, v0, 0x14

    .line 2552
    shr-int v1, p1, v0

    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 2553
    shr-int v1, p2, v0

    iput v1, p3, Landroid/graphics/Point;->y:I

    .line 2555
    new-instance v1, Lcom/amap/mapapi/map/bc;

    invoke-direct {v1}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2557
    iget v1, p0, Lcom/amap/mapapi/map/MapView;->width:I

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->centerX:I

    shr-int/2addr v2, v0

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 2558
    iget v1, p0, Lcom/amap/mapapi/map/MapView;->height:I

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->centerY:I

    shr-int v0, v2, v0

    sub-int v0, v1, v0

    iget v1, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 2559
    return-void
.end method

.method public getZoomButtonsController()Lcom/amap/mapapi/map/ZoomButtonsController;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/amap/mapapi/map/ZoomButtonsController;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    return v0
.end method

.method public getZoomMgr()Lcom/amap/mapapi/map/MapView$g;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    return-object v0
.end method

.method protected isAGridsInScreen(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2240
    new-instance v0, Lcom/amap/mapapi/map/bc;

    invoke-direct {v0}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2241
    new-instance v1, Lcom/amap/mapapi/map/bc;

    invoke-direct {v1}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2242
    iget v3, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-direct {p0, v3}, Lcom/amap/mapapi/map/MapView;->c(I)I

    move-result v3

    .line 2243
    iget v4, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    sub-int/2addr v4, v3

    .line 2245
    invoke-virtual {p0, v0, v1}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/bc;Lcom/amap/mapapi/map/bc;)V

    .line 2247
    iget v5, v0, Lcom/amap/mapapi/map/bc;->a:I

    shr-int/2addr v5, v4

    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    shr-int/2addr v0, v4

    invoke-static {v5, v0}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v5

    .line 2250
    iget v0, v1, Lcom/amap/mapapi/map/bc;->a:I

    shr-int/2addr v0, v4

    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    shr-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v4

    move v1, v2

    .line 2254
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2255
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 2254
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2258
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->QuadKeyToTile(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 2259
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v5, Lcom/amap/mapapi/map/bc;->a:I

    if-lt v6, v7, :cond_0

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v4, Lcom/amap/mapapi/map/bc;->a:I

    if-gt v6, v7, :cond_0

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v5, Lcom/amap/mapapi/map/bc;->b:I

    if-lt v6, v7, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v6, v4, Lcom/amap/mapapi/map/bc;->b:I

    if-gt v0, v6, :cond_0

    .line 2263
    const/4 v2, 0x1

    .line 2267
    :cond_2
    return v2
.end method

.method public isDoubleClickZooming()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->s:Z

    return v0
.end method

.method protected isGridInScreen(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2211
    new-instance v1, Lcom/amap/mapapi/map/bc;

    invoke-direct {v1}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2212
    new-instance v2, Lcom/amap/mapapi/map/bc;

    invoke-direct {v2}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2214
    iget v3, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-direct {p0, v3}, Lcom/amap/mapapi/map/MapView;->c(I)I

    move-result v3

    .line 2215
    iget v4, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    sub-int/2addr v4, v3

    .line 2216
    invoke-virtual {p0, v1, v2}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/bc;Lcom/amap/mapapi/map/bc;)V

    .line 2218
    iget v5, v1, Lcom/amap/mapapi/map/bc;->a:I

    shr-int/2addr v5, v4

    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    shr-int/2addr v1, v4

    invoke-static {v5, v1}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v1

    .line 2221
    iget v5, v2, Lcom/amap/mapapi/map/bc;->a:I

    shr-int/2addr v5, v4

    iget v2, v2, Lcom/amap/mapapi/map/bc;->b:I

    shr-int/2addr v2, v4

    invoke-static {v5, v2}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->PixelsToTile(II)Lcom/amap/mapapi/map/bc;

    move-result-object v2

    .line 2225
    invoke-static {p1}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->QuadKeyToTile(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    .line 2226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 2235
    :cond_0
    :goto_0
    return v0

    .line 2228
    :cond_1
    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v5, v1, Lcom/amap/mapapi/map/bc;->a:I

    if-lt v3, v5, :cond_0

    iget v3, v4, Landroid/graphics/Point;->x:I

    iget v5, v2, Lcom/amap/mapapi/map/bc;->a:I

    if-gt v3, v5, :cond_0

    iget v3, v4, Landroid/graphics/Point;->y:I

    iget v1, v1, Lcom/amap/mapapi/map/bc;->b:I

    if-lt v3, v1, :cond_0

    iget v1, v4, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/amap/mapapi/map/bc;->b:I

    if-gt v1, v2, :cond_0

    .line 2232
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSatellite()Z
    .locals 2

    .prologue
    .line 642
    .line 643
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;)Lcom/amap/mapapi/map/w;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_0

    .line 646
    iget-boolean v0, v0, Lcom/amap/mapapi/map/w;->f:Z

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreetView()Z
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public isTraffic()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->isSatellite()Z

    move-result v1

    .line 722
    const-string v2, ""

    .line 723
    if-nez v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->i:Ljava/lang/String;

    .line 729
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v2, v1}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;)Lcom/amap/mapapi/map/w;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_0

    .line 731
    iget-boolean v0, v1, Lcom/amap/mapapi/map/w;->f:Z

    .line 733
    :cond_0
    return v0
.end method

.method public isVectorMap()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    return v0
.end method

.method protected declared-synchronized loadBMtilesData2(Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2274
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 2275
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 2276
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2277
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v1, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->hasGridData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2279
    :goto_1
    if-eqz v1, :cond_2

    .line 2275
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2277
    goto :goto_1

    .line 2282
    :cond_2
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/av;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2285
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2290
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2291
    if-eqz p2, :cond_4

    .line 2292
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    const/4 v1, 0x0

    iput v1, v0, Lcom/amap/mapapi/map/av;->a:I

    .line 2293
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/av;->b()V

    .line 2294
    invoke-virtual {p0, v4}, Lcom/amap/mapapi/map/MapView;->sendMapDataRequest(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2303
    :goto_3
    monitor-exit p0

    return-void

    .line 2296
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    iget v1, v0, Lcom/amap/mapapi/map/av;->a:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/mapapi/map/av;->a:I

    .line 2297
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/av;->b()V

    goto :goto_3

    .line 2300
    :cond_5
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    const/4 v1, 0x0

    iput v1, v0, Lcom/amap/mapapi/map/av;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 842
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 844
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_0

    .line 850
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->VdestoryMap()V

    .line 854
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 856
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 786
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 471
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 892
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    if-nez v2, :cond_1

    move v0, v1

    .line 898
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    iget-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    if-eqz v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/mapapi/map/ai$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/mapapi/map/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 904
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    if-nez v2, :cond_1

    move v0, v1

    .line 910
    :cond_0
    :goto_0
    return v0

    .line 907
    :cond_1
    iget-boolean v2, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/mapapi/map/ai$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/mapapi/map/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 812
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->h()V

    .line 814
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 953
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 954
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 831
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 836
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 958
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 959
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->d()V

    .line 960
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_1

    .line 961
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->VdestoryMap()V

    .line 965
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->width:I

    .line 966
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->height:I

    .line 967
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->Vinit()V

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    .line 971
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 972
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/Point;)V

    .line 974
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    invoke-static {v0, p1, p2}, Lcom/amap/mapapi/map/MapView$g;->a(Lcom/amap/mapapi/map/MapView$g;II)V

    .line 975
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    invoke-virtual {v0, p1, p2}, Lcom/amap/mapapi/map/MapView$e;->a(II)V

    .line 976
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, p1, p2}, Lcom/amap/mapapi/map/ai$d;->a(II)V

    .line 977
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController;->getReqLatSpan()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController;->getReqLngSpan()I

    move-result v0

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapController;->getReqLatSpan()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapController;->getReqLngSpan()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapController;->zoomToSpan(II)V

    .line 980
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/MapController;->setReqLatSpan(I)V

    .line 981
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/MapController;->setReqLngSpan(I)V

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->x:Lcom/amap/mapapi/map/MapView$d;

    if-eqz v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->x:Lcom/amap/mapapi/map/MapView$d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/MapView$d;->a(IIII)V

    .line 988
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 934
    sget-boolean v1, Lcom/amap/mapapi/core/c;->m:Z

    if-nez v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    if-eqz v1, :cond_0

    .line 940
    iget-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    if-nez v1, :cond_2

    .line 941
    const/4 v0, 0x0

    goto :goto_0

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/ai$a;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$c;->b(Landroid/view/MotionEvent;)Z

    .line 948
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 916
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    if-nez v1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return v0

    .line 919
    :cond_1
    iget-boolean v1, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->u:Lcom/amap/mapapi/map/TrackballGestureDetector$OnTrackballListener;

    if-nez v1, :cond_3

    .line 920
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 922
    :cond_3
    invoke-static {}, Lcom/amap/mapapi/map/TrackballGestureDetector;->getInstance()Lcom/amap/mapapi/map/TrackballGestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MapView;->t:Lcom/amap/mapapi/map/TrackballGestureDetector;

    .line 923
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->t:Lcom/amap/mapapi/map/TrackballGestureDetector;

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/TrackballGestureDetector;->analyze(Landroid/view/MotionEvent;)V

    .line 924
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->u:Lcom/amap/mapapi/map/TrackballGestureDetector$OnTrackballListener;

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView;->t:Lcom/amap/mapapi/map/TrackballGestureDetector;

    invoke-interface {v1, v2}, Lcom/amap/mapapi/map/TrackballGestureDetector$OnTrackballListener;->onTrackballChange(Lcom/amap/mapapi/map/TrackballGestureDetector;)V

    .line 925
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/ai$a;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->m:Lcom/amap/mapapi/map/MapView$c;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 887
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 888
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 2807
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-nez v0, :cond_0

    .line 2808
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 2827
    :goto_0
    return-void

    .line 2811
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 2812
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    if-eqz v0, :cond_1

    .line 2813
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->VdestoryMap()V

    .line 2826
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    goto :goto_0

    .line 2815
    :cond_2
    if-nez p1, :cond_1

    .line 2816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->bfirstDrawed:Z

    .line 2817
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v0

    .line 2818
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getHeight()I

    move-result v1

    .line 2819
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2820
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->width:I

    .line 2821
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->height:I

    .line 2822
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->Vinit()V

    .line 2823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->isInited:Z

    goto :goto_1
.end method

.method public paintVectorMap(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 2328
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->v:Z

    if-nez v0, :cond_0

    .line 2329
    const/high16 v0, -0x100

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    iget v3, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-virtual {v1, v3}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->getBKColor(I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapView;->setBackgroundColor(I)V

    .line 2331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->v:Z

    .line 2334
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 2335
    invoke-virtual {p0, v0, v2}, Lcom/amap/mapapi/map/MapView;->loadBMtilesData2(Ljava/util/ArrayList;Z)V

    .line 2336
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->f()Ljava/util/ArrayList;

    move-result-object v4

    .line 2337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2339
    iget v1, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/amap/mapapi/map/MapView;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/amap/mapapi/map/MapView;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v1, v3, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 2340
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 2341
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2342
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    move v1, v2

    .line 2343
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2344
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2347
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v3, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->hasBitMapData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2348
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2343
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2350
    :cond_2
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/am;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2352
    new-instance v3, Lcom/amap/mapapi/map/an;

    invoke-direct {v3}, Lcom/amap/mapapi/map/an;-><init>()V

    .line 2353
    iput-object v0, v3, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    .line 2354
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView;->j:Lcom/amap/mapapi/map/am;

    invoke-virtual {v7, v3}, Lcom/amap/mapapi/map/am;->a(Lcom/amap/mapapi/map/an;)V

    .line 2356
    :cond_3
    const-string v3, ""

    .line 2357
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    .line 2358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2360
    :goto_2
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v3, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->hasBitMapData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2361
    invoke-virtual {v6, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2367
    :cond_4
    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2368
    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 2370
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2371
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2373
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v3, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->hasBitMapData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2375
    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->QuadKeyToTitle(Ljava/lang/String;)Lcom/amap/mapapi/map/bc;

    move-result-object v3

    .line 2377
    iget v4, v3, Lcom/amap/mapapi/map/bc;->a:I

    mul-int/lit16 v4, v4, 0x100

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x14

    shl-int/2addr v4, v6

    .line 2378
    iget v3, v3, Lcom/amap/mapapi/map/bc;->b:I

    mul-int/lit16 v3, v3, 0x100

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x14

    shl-int/2addr v3, v6

    .line 2379
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 2380
    iget v7, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v4, v3, v7, v6}, Lcom/amap/mapapi/map/MapView;->getScreenPntBy20Pixel(IIILandroid/graphics/Point;)V

    .line 2382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 2384
    iget v4, p0, Lcom/amap/mapapi/map/MapView;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v7, p0, Lcom/amap/mapapi/map/MapView;->height:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v3, v9, v9, v4, v7}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 2385
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 2387
    :try_start_0
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    iget-object v4, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->fillBitmapBufferData(Ljava/lang/String;[B)V

    .line 2389
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2390
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    iget v3, v6, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2394
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_6
    move v1, v2

    .line 2399
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 2400
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2401
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v3, v0}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->hasBitMapData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2402
    invoke-static {v0}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->QuadKeyToTitle(Ljava/lang/String;)Lcom/amap/mapapi/map/bc;

    move-result-object v3

    .line 2404
    iget v4, v3, Lcom/amap/mapapi/map/bc;->a:I

    mul-int/lit16 v4, v4, 0x100

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x14

    shl-int/2addr v4, v6

    .line 2405
    iget v3, v3, Lcom/amap/mapapi/map/bc;->b:I

    mul-int/lit16 v3, v3, 0x100

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x14

    shl-int/2addr v3, v6

    .line 2406
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 2407
    iget v7, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-virtual {p0, v4, v3, v7, v6}, Lcom/amap/mapapi/map/MapView;->getScreenPntBy20Pixel(IIILandroid/graphics/Point;)V

    .line 2409
    :try_start_1
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    iget-object v4, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->fillBitmapBufferData(Ljava/lang/String;[B)V

    .line 2411
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2412
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    iget v3, v6, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2399
    :cond_7
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 2414
    :catch_0
    move-exception v0

    .line 2415
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 2419
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2420
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    .line 2421
    :goto_7
    if-gez v0, :cond_9

    .line 2422
    add-int/lit16 v0, v0, 0x168

    goto :goto_7

    .line 2424
    :cond_9
    :goto_8
    const/16 v1, 0x168

    if-le v0, v1, :cond_a

    .line 2425
    add-int/lit16 v0, v0, -0x168

    goto :goto_8

    .line 2427
    :cond_a
    new-instance v1, Lcom/mapabc/minimap/map/vmap/NativeMap;

    invoke-direct {v1}, Lcom/mapabc/minimap/map/vmap/NativeMap;-><init>()V

    .line 2428
    iget v3, p0, Lcom/amap/mapapi/map/MapView;->width:I

    iget v4, p0, Lcom/amap/mapapi/map/MapView;->height:I

    invoke-virtual {v1, v8, v3, v4}, Lcom/mapabc/minimap/map/vmap/NativeMap;->initMap([BII)V

    .line 2429
    iget v3, p0, Lcom/amap/mapapi/map/MapView;->centerX:I

    iget v4, p0, Lcom/amap/mapapi/map/MapView;->centerY:I

    iget v5, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/mapabc/minimap/map/vmap/NativeMap;->setMapParameter(IIII)V

    .line 2430
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v1, v0, v2}, Lcom/mapabc/minimap/map/vmap/NativeMap;->paintMap(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;I)Z

    .line 2431
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, p1, v2}, Lcom/mapabc/minimap/map/vmap/NativeMap;->paintLables(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;Landroid/graphics/Canvas;I)V

    .line 2434
    return-void

    .line 2392
    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_b
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public preLoad()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public registerTrackballListener(Lcom/amap/mapapi/map/TrackballGestureDetector$OnTrackballListener;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView;->u:Lcom/amap/mapapi/map/TrackballGestureDetector$OnTrackballListener;

    .line 346
    return-void
.end method

.method protected sendMapDataRequest(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    .line 2307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2310
    :cond_0
    new-instance v2, Lcom/amap/mapapi/map/ac;

    invoke-direct {v2, p0}, Lcom/amap/mapapi/map/ac;-><init>(Lcom/amap/mapapi/map/MapView;)V

    .line 2311
    iget v0, p0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iput v0, v2, Lcom/amap/mapapi/map/ac;->e:I

    .line 2312
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/n;->a()V

    .line 2313
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2314
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2315
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/av;->c(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/ac;->b(Ljava/lang/String;)V

    .line 2313
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2318
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->i:Lcom/amap/mapapi/map/n;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/n;->a(Lcom/amap/mapapi/map/ac;)V

    goto :goto_0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->o:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$g;->b(Z)V

    .line 462
    return-void
.end method

.method public setClickable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapView;->p:Z

    .line 882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 883
    return-void
.end method

.method public setDoubleClickZooming(Z)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapView;->s:Z

    .line 339
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 350
    sput-boolean p1, Lcom/amap/mapapi/core/c;->m:Z

    .line 351
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 352
    return-void
.end method

.method public setMapAngle(I)V
    .locals 3
    .parameter

    .prologue
    .line 2192
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_0

    .line 2193
    iput p1, p0, Lcom/amap/mapapi/map/MapView;->mapAngle:I

    .line 2194
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 2196
    :cond_0
    return-void
.end method

.method protected setMapCenter(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2738
    if-ltz p1, :cond_0

    const v0, 0xfffffff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x14

    if-lt p2, v0, :cond_0

    const v0, 0xfffffe7

    if-gt p2, v0, :cond_0

    .line 2739
    iput p1, p0, Lcom/amap/mapapi/map/MapView;->centerX:I

    .line 2740
    iput p2, p0, Lcom/amap/mapapi/map/MapView;->centerY:I

    .line 2742
    :cond_0
    return-void
.end method

.method protected setMapCenterScreen(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2732
    new-instance v0, Lcom/amap/mapapi/map/bc;

    invoke-direct {v0}, Lcom/amap/mapapi/map/bc;-><init>()V

    .line 2733
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget v2, p0, Lcom/amap/mapapi/map/MapView;->centerX:I

    iget v3, p0, Lcom/amap/mapapi/map/MapView;->centerY:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/amap/mapapi/map/MapView;->getPixel20Pnt2(Landroid/graphics/Point;Lcom/amap/mapapi/map/bc;II)V

    .line 2734
    iget v1, v0, Lcom/amap/mapapi/map/bc;->a:I

    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    invoke-virtual {p0, v1, v0}, Lcom/amap/mapapi/map/MapView;->setMapCenter(II)V

    .line 2735
    return-void
.end method

.method public setMapMoveEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 278
    sput-boolean p1, Lcom/amap/mapapi/core/c;->n:Z

    .line 279
    return-void
.end method

.method public setMapProjectSetting(Lcom/amap/mapapi/map/ae;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/map/ae;)V

    .line 259
    return-void
.end method

.method public setMapviewSizeChangedListener(Lcom/amap/mapapi/map/MapView$d;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView;->x:Lcom/amap/mapapi/map/MapView$d;

    .line 574
    return-void
.end method

.method public setReticleDrawMode(Lcom/amap/mapapi/map/MapView$ReticleDrawMode;)V
    .locals 1
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/MapView$ReticleDrawMode;)V

    .line 388
    return-void
.end method

.method public setSatellite(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 578
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->isVectorMap()Z

    move-result v0

    .line 579
    if-ne v0, v4, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->isSatellite()Z

    move-result v0

    .line 583
    if-eq v0, p1, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->isTraffic()Z

    move-result v0

    .line 587
    invoke-virtual {p0, v5}, Lcom/amap/mapapi/map/MapView;->setTraffic(Z)V

    .line 588
    if-nez p1, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    .line 593
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    .line 595
    if-ne v0, v4, :cond_2

    .line 596
    invoke-virtual {p0, v4}, Lcom/amap/mapapi/map/MapView;->setTraffic(Z)V

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;)Lcom/amap/mapapi/map/w;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_5

    .line 605
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    .line 608
    if-ne v0, v4, :cond_4

    .line 609
    invoke-virtual {p0, v4}, Lcom/amap/mapapi/map/MapView;->setTraffic(Z)V

    .line 611
    :cond_4
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0

    .line 614
    :cond_5
    new-instance v1, Lcom/amap/mapapi/map/w;

    invoke-direct {v1}, Lcom/amap/mapapi/map/w;-><init>()V

    .line 615
    new-instance v2, Lcom/amap/mapapi/map/MapView$1;

    invoke-direct {v2, p0}, Lcom/amap/mapapi/map/MapView$1;-><init>(Lcom/amap/mapapi/map/MapView;)V

    iput-object v2, v1, Lcom/amap/mapapi/map/w;->j:Lcom/amap/mapapi/map/bb;

    .line 624
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai$a;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    .line 625
    iput-boolean v4, v1, Lcom/amap/mapapi/map/w;->e:Z

    .line 626
    iput-boolean v4, v1, Lcom/amap/mapapi/map/w;->d:Z

    .line 627
    iput-boolean v4, v1, Lcom/amap/mapapi/map/w;->f:Z

    .line 628
    iput-boolean v4, v1, Lcom/amap/mapapi/map/w;->g:Z

    .line 629
    sget v2, Lcom/amap/mapapi/core/c;->a:I

    iput v2, v1, Lcom/amap/mapapi/map/w;->b:I

    .line 630
    sget v2, Lcom/amap/mapapi/core/c;->b:I

    iput v2, v1, Lcom/amap/mapapi/map/w;->c:I

    .line 631
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/w;Landroid/content/Context;)Z

    .line 632
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    .line 634
    if-ne v0, v4, :cond_6

    .line 635
    invoke-virtual {p0, v4}, Lcom/amap/mapapi/map/MapView;->setTraffic(Z)V

    .line 637
    :cond_6
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto/16 :goto_0
.end method

.method public setScreenHotPoint(Landroid/graphics/Point;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/Point;)V

    .line 268
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->l:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v1, v1}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 270
    return-void
.end method

.method public setServerUrl(Lcom/amap/mapapi/core/s;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p1, Lcom/amap/mapapi/core/s;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amap/mapapi/core/s;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v0

    iget-object v1, p1, Lcom/amap/mapapi/core/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/j;->a(Ljava/lang/String;)V

    .line 301
    :cond_2
    iget-object v0, p1, Lcom/amap/mapapi/core/s;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/amap/mapapi/core/s;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 303
    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v0

    iget-object v1, p1, Lcom/amap/mapapi/core/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/j;->b(Ljava/lang/String;)V

    .line 306
    :cond_3
    iget-object v0, p1, Lcom/amap/mapapi/core/s;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/amap/mapapi/core/s;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 308
    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v0

    iget-object v1, p1, Lcom/amap/mapapi/core/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/j;->e(Ljava/lang/String;)V

    .line 311
    :cond_4
    iget-object v0, p1, Lcom/amap/mapapi/core/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/amap/mapapi/core/s;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 313
    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v0

    iget-object v1, p1, Lcom/amap/mapapi/core/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/j;->c(Ljava/lang/String;)V

    .line 315
    :cond_5
    iget-object v0, p1, Lcom/amap/mapapi/core/s;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/amap/mapapi/core/s;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 317
    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v0

    iget-object v1, p1, Lcom/amap/mapapi/core/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/j;->d(Ljava/lang/String;)V

    .line 320
    :cond_6
    iget-object v0, p1, Lcom/amap/mapapi/core/s;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amap/mapapi/core/s;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v0

    iget-object v1, p1, Lcom/amap/mapapi/core/s;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/j;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setStreetView(Z)V
    .locals 0
    .parameter

    .prologue
    .line 737
    return-void
.end method

.method public setTraffic(Z)V
    .locals 9
    .parameter

    .prologue
    const-wide/32 v7, 0x1d4c0

    const/16 v6, 0x12

    const/16 v3, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->isTraffic()Z

    move-result v0

    .line 653
    if-ne p1, v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->isSatellite()Z

    move-result v0

    .line 657
    const-string v1, ""

    .line 658
    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->i:Ljava/lang/String;

    .line 664
    if-nez p1, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, v1, v4}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    .line 666
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0

    .line 670
    :cond_2
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v2, v1}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;)Lcom/amap/mapapi/map/w;

    move-result-object v2

    .line 671
    if-eqz v2, :cond_3

    .line 672
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, v1, v5}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    .line 673
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0

    .line 676
    :cond_3
    if-ne v0, v5, :cond_4

    .line 678
    new-instance v0, Lcom/amap/mapapi/map/w;

    invoke-direct {v0}, Lcom/amap/mapapi/map/w;-><init>()V

    .line 679
    iput-boolean v5, v0, Lcom/amap/mapapi/map/w;->h:Z

    .line 680
    iput-wide v7, v0, Lcom/amap/mapapi/map/w;->i:J

    .line 682
    iput-object v1, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    .line 683
    iput-boolean v4, v0, Lcom/amap/mapapi/map/w;->e:Z

    .line 684
    iput-boolean v5, v0, Lcom/amap/mapapi/map/w;->d:Z

    .line 685
    iput-boolean v5, v0, Lcom/amap/mapapi/map/w;->f:Z

    .line 686
    iput-boolean v4, v0, Lcom/amap/mapapi/map/w;->g:Z

    .line 687
    iput v6, v0, Lcom/amap/mapapi/map/w;->b:I

    .line 688
    iput v3, v0, Lcom/amap/mapapi/map/w;->c:I

    .line 689
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/w;Landroid/content/Context;)Z

    .line 715
    :goto_1
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, v1, v5}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    .line 716
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0

    .line 691
    :cond_4
    new-instance v0, Lcom/amap/mapapi/map/w;

    invoke-direct {v0}, Lcom/amap/mapapi/map/w;-><init>()V

    .line 692
    iput-boolean v5, v0, Lcom/amap/mapapi/map/w;->h:Z

    .line 693
    iput-wide v7, v0, Lcom/amap/mapapi/map/w;->i:J

    .line 695
    new-instance v2, Lcom/amap/mapapi/map/MapView$2;

    invoke-direct {v2, p0}, Lcom/amap/mapapi/map/MapView$2;-><init>(Lcom/amap/mapapi/map/MapView;)V

    iput-object v2, v0, Lcom/amap/mapapi/map/w;->j:Lcom/amap/mapapi/map/bb;

    .line 706
    iput-object v1, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    .line 707
    iput-boolean v4, v0, Lcom/amap/mapapi/map/w;->e:Z

    .line 708
    iput-boolean v5, v0, Lcom/amap/mapapi/map/w;->d:Z

    .line 709
    iput-boolean v5, v0, Lcom/amap/mapapi/map/w;->f:Z

    .line 710
    iput-boolean v4, v0, Lcom/amap/mapapi/map/w;->g:Z

    .line 711
    iput v6, v0, Lcom/amap/mapapi/map/w;->b:I

    .line 712
    iput v3, v0, Lcom/amap/mapapi/map/w;->c:I

    .line 713
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/w;Landroid/content/Context;)Z

    goto :goto_1
.end method

.method public setVectorMap(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 493
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-ne v0, p1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMapCenter()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    .line 498
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v1

    .line 499
    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    .line 503
    if-ne p1, v6, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v3, Lcom/amap/mapapi/core/c;->c:I

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/ai$d;->b(I)V

    .line 508
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v3, Lcom/amap/mapapi/core/c;->d:I

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/ai$d;->c(I)V

    .line 510
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ad;->a()V

    .line 511
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v5}, Lcom/amap/mapapi/map/ai$c;->a(I)Lcom/amap/mapapi/map/af;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/aw;

    .line 513
    invoke-virtual {v0}, Lcom/amap/mapapi/map/aw;->b()V

    .line 514
    invoke-virtual {v0}, Lcom/amap/mapapi/map/aw;->c()V

    .line 515
    invoke-virtual {v0}, Lcom/amap/mapapi/map/aw;->a()V

    .line 517
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v4, v5}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/af;I)V

    .line 518
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v6}, Lcom/amap/mapapi/map/ai$c;->a(I)Lcom/amap/mapapi/map/af;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/bd;

    .line 520
    if-nez v0, :cond_1

    .line 521
    new-instance v0, Lcom/amap/mapapi/map/bd;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/amap/mapapi/map/bd;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    .line 522
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v3, v0, v6}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/af;I)V

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->width:I

    .line 526
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/MapView;->height:I

    .line 527
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->Vinit()V

    .line 561
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView;->n:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/MapController;->setCenter(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 562
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    .line 563
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v5, v5}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 564
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getZoomMgr()Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->d()V

    goto/16 :goto_0

    .line 529
    :cond_3
    sget v0, Lcom/amap/mapapi/core/c;->b:I

    if-gt v1, v0, :cond_6

    .line 530
    sget v0, Lcom/amap/mapapi/core/c;->b:I

    .line 532
    :goto_2
    sget v1, Lcom/amap/mapapi/core/c;->a:I

    if-lt v0, v1, :cond_5

    .line 533
    sget v0, Lcom/amap/mapapi/core/c;->a:I

    move v1, v0

    .line 535
    :goto_3
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v3, Lcom/amap/mapapi/core/c;->a:I

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/ai$d;->b(I)V

    .line 537
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v3, Lcom/amap/mapapi/core/c;->b:I

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/ai$d;->c(I)V

    .line 539
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ad;->a()V

    .line 540
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v6}, Lcom/amap/mapapi/map/ai$c;->a(I)Lcom/amap/mapapi/map/af;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/bd;

    .line 542
    if-eqz v0, :cond_4

    .line 543
    invoke-virtual {v0}, Lcom/amap/mapapi/map/bd;->b()V

    .line 544
    invoke-virtual {v0}, Lcom/amap/mapapi/map/bd;->c()V

    .line 545
    invoke-virtual {v0}, Lcom/amap/mapapi/map/bd;->a()V

    .line 547
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v4, v6}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/af;I)V

    .line 549
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->VdestoryMap()V

    .line 551
    :cond_4
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v5}, Lcom/amap/mapapi/map/ai$c;->a(I)Lcom/amap/mapapi/map/af;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/aw;

    .line 553
    if-nez v0, :cond_2

    .line 554
    new-instance v0, Lcom/amap/mapapi/map/aw;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/amap/mapapi/map/aw;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    .line 555
    invoke-virtual {v0}, Lcom/amap/mapapi/map/aw;->a_()V

    .line 556
    invoke-virtual {v0}, Lcom/amap/mapapi/map/aw;->d()V

    .line 557
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v3, v0, v5}, Lcom/amap/mapapi/map/ai$c;->a(Lcom/amap/mapapi/map/af;I)V

    goto/16 :goto_1

    :cond_5
    move v1, v0

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method protected toScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 11
    .parameter

    .prologue
    const-wide/high16 v9, 0x4000

    .line 2501
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2502
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getWidth()I

    move-result v1

    .line 2503
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getHeight()I

    move-result v2

    .line 2504
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2505
    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2506
    float-to-double v5, v4

    float-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 2507
    float-to-double v7, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v3, v4

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 2508
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView;->getMapAngle()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    .line 2509
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    shr-int/lit8 v1, v1, 0x1

    int-to-double v9, v1

    add-double/2addr v7, v9

    double-to-float v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2510
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    shr-int/lit8 v1, v2, 0x1

    int-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2512
    return-object v0
.end method
