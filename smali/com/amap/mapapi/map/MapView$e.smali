.class public Lcom/amap/mapapi/map/MapView$e;
.super Ljava/lang/Object;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/amap/mapapi/map/MapView;

.field private c:[Landroid/widget/ImageView;

.field private d:[Landroid/graphics/drawable/Drawable;

.field private e:Lcom/amap/mapapi/map/MapView$b;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1098
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    .line 1075
    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    .line 1076
    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->e:Lcom/amap/mapapi/map/MapView$b;

    .line 1078
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView$e;->a:Z

    .line 1084
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView$e;->f:Z

    .line 1086
    const/16 v0, 0x82

    iput v0, p0, Lcom/amap/mapapi/map/MapView$e;->g:I

    .line 1087
    const/16 v0, 0x55

    iput v0, p0, Lcom/amap/mapapi/map/MapView$e;->h:I

    .line 1088
    const/16 v0, 0x32

    iput v0, p0, Lcom/amap/mapapi/map/MapView$e;->i:I

    .line 1089
    const/16 v0, 0x23

    iput v0, p0, Lcom/amap/mapapi/map/MapView$e;->j:I

    .line 1090
    const/16 v0, 0x1e

    iput v0, p0, Lcom/amap/mapapi/map/MapView$e;->k:I

    .line 1091
    const/16 v0, 0x19

    iput v0, p0, Lcom/amap/mapapi/map/MapView$e;->l:I

    .line 1300
    new-instance v0, Lcom/amap/mapapi/map/ag;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ag;-><init>(Lcom/amap/mapapi/map/MapView$e;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->m:Landroid/view/View$OnClickListener;

    .line 1115
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1294
    if-eqz p2, :cond_0

    move v0, p1

    .line 1297
    :goto_0
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1298
    return-void

    .line 1294
    :cond_0
    add-int/lit8 v0, p1, 0x4

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView$e;)[Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapView$e;)Lcom/amap/mapapi/map/MapView$b;
    .locals 1
    .parameter

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->e:Lcom/amap/mapapi/map/MapView$b;

    return-object v0
.end method

.method private b(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v0, 0x0

    .line 1153
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "overview.png"

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string v3, "detail.png"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "prev.png"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "next.png"

    aput-object v3, v2, v1

    const-string v1, "overview_disable.png"

    aput-object v1, v2, v7

    const/4 v1, 0x5

    const-string v3, "detail_disable.png"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "prev_disable.png"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "next_disable.png"

    aput-object v3, v2, v1

    move v1, v0

    .line 1158
    :goto_0
    if-ge v1, v8, :cond_0

    .line 1162
    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    iget-object v5, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-static {v5}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapActivity;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v4, v5, v6}, Lcom/amap/mapapi/core/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    :goto_1
    if-ge v0, v7, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-static {v3}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 1168
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1169
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/MapView;->generateDefaultLayoutParams()Lcom/amap/mapapi/map/MapView$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1170
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1171
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$e;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1174
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1177
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1178
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    array-length v3, v0

    move v2, v1

    .line 1181
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 1181
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1186
    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 1198
    :cond_2
    iput-object v6, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    .line 1199
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1200
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    array-length v2, v0

    move v0, v1

    .line 1201
    :goto_2
    if-ge v0, v2, :cond_3

    .line 1202
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aput-object v6, v1, v0

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1204
    :cond_3
    iput-object v6, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    .line 1206
    :cond_4
    return-void
.end method

.method public a(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1213
    const/4 v3, 0x0

    .line 1214
    const/4 v0, 0x0

    .line 1215
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1216
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v2, v1, 0x8

    sub-int v3, v0, v2

    .line 1217
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v12, v0

    .line 1222
    :goto_1
    new-instance v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v5, 0x55

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IIIII)V

    .line 1226
    new-instance v4, Lcom/amap/mapapi/map/MapView$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v9, 0x53

    move v7, v3

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IIIII)V

    .line 1231
    new-instance v5, Lcom/amap/mapapi/map/MapView$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v10, 0x55

    move v8, v12

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IIIII)V

    .line 1235
    new-instance v6, Lcom/amap/mapapi/map/MapView$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v11, 0x53

    move v9, v12

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IIIII)V

    .line 1240
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/amap/mapapi/map/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1241
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/amap/mapapi/map/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/amap/mapapi/map/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v6}, Lcom/amap/mapapi/map/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1218
    :cond_2
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->a(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1219
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v2, v1, 0xf

    sub-int v3, v0, v2

    .line 1220
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    move v12, v0

    goto :goto_1

    :cond_3
    move v12, v0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1274
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/amap/mapapi/map/MapView$e;->a(IZ)V

    .line 1275
    return-void
.end method

.method public a(ZLcom/amap/mapapi/map/MapView$b;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1247
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1248
    :cond_0
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    .line 1249
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->d:[Landroid/graphics/drawable/Drawable;

    .line 1250
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 1251
    iget v0, p0, Lcom/amap/mapapi/map/MapView$e;->g:I

    iget v4, p0, Lcom/amap/mapapi/map/MapView$e;->h:I

    invoke-direct {p0, v0, v4}, Lcom/amap/mapapi/map/MapView$e;->b(II)V

    .line 1257
    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v0

    iget-object v4, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-static {v4}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/amap/mapapi/map/MapView$e;->a(II)V

    .line 1261
    :cond_1
    iput-object p2, p0, Lcom/amap/mapapi/map/MapView$e;->e:Lcom/amap/mapapi/map/MapView$b;

    move v4, v1

    .line 1262
    :goto_1
    if-ge v4, v2, :cond_6

    .line 1263
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aget-object v5, v0, v4

    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    if-ne p1, v3, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->c:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 1262
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1252
    :cond_3
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    if-ne v0, v3, :cond_4

    .line 1253
    iget v0, p0, Lcom/amap/mapapi/map/MapView$e;->k:I

    iget v4, p0, Lcom/amap/mapapi/map/MapView$e;->l:I

    invoke-direct {p0, v0, v4}, Lcom/amap/mapapi/map/MapView$e;->b(II)V

    goto :goto_0

    .line 1255
    :cond_4
    iget v0, p0, Lcom/amap/mapapi/map/MapView$e;->i:I

    iget v4, p0, Lcom/amap/mapapi/map/MapView$e;->j:I

    invoke-direct {p0, v0, v4}, Lcom/amap/mapapi/map/MapView$e;->b(II)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1263
    goto :goto_2

    .line 1269
    :cond_6
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$e;->b:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->c(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    if-nez p1, :cond_7

    move v1, v3

    :cond_7
    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$g;->a(Z)V

    .line 1270
    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapView$e;->f:Z

    .line 1271
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1278
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/amap/mapapi/map/MapView$e;->a(IZ)V

    .line 1279
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView$e;->f:Z

    return v0
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1282
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/amap/mapapi/map/MapView$e;->a(IZ)V

    .line 1283
    return-void
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1286
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amap/mapapi/map/MapView$e;->a(IZ)V

    .line 1287
    return-void
.end method
