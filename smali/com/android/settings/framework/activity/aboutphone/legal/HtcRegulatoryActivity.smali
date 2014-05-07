.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "HtcRegulatoryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    return-void
.end method

.method private createGenericLayout()Landroid/widget/LinearLayout;
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 102
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM2()I

    move-result v8

    .line 103
    .local v8, padding:I
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .local v7, linearLayout:Landroid/widget/LinearLayout;
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->getAssetList()Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, assetList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 115
    .local v9, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 116
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;

    .line 118
    .local v0, assetInfo:Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
    if-nez v0, :cond_0

    .line 119
    sget-object v10, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "assetInfo is null:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v10, v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mPath:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v6, img:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-ne v13, v10, :cond_2

    .line 138
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 139
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v5, imageView:Landroid/widget/ImageView;
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    .end local v0           #assetInfo:Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
    .end local v1           #assetList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;>;"
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #i:I
    .end local v5           #imageView:Landroid/widget/ImageView;
    .end local v6           #img:Ljava/io/File;
    .end local v9           #size:I
    :catch_0
    move-exception v3

    .line 149
    .local v3, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 155
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 157
    return-object v7

    .line 145
    .restart local v0       #assetInfo:Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
    .restart local v1       #assetList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;>;"
    .restart local v4       #i:I
    .restart local v6       #img:Ljava/io/File;
    .restart local v9       #size:I
    :cond_2
    :try_start_1
    sget-object v10, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Asset doesn\'t exist:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private createKddiLayout()Landroid/view/View;
    .locals 20

    .prologue
    .line 192
    const/16 v16, 0x0

    .line 194
    .local v16, view:Landroid/view/View;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 201
    .local v8, imageViewIds:[I
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v13, v0, [I

    fill-array-data v13, :array_1

    .line 207
    .local v13, textViewIds:[I
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->getAssetPathRpKddiRt()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    const/16 v17, 0x1

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->getAssetPathRpKddiWifi()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    const/16 v17, 0x2

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->getAssetPathRpKddiBt()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    const/16 v17, 0x3

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->getAssetPathRpKddiI()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    .line 214
    .local v2, assetPaths:[Ljava/lang/String;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->getLine1()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x1

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->getLine2()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x2

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->getLine3()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v17

    .line 221
    .local v14, texts:[Ljava/lang/String;
    :try_start_0
    const-string v17, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 225
    .local v10, mInflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM2()I

    move-result v9

    .line 226
    .local v9, leftPadding:I
    move v11, v9

    .line 227
    .local v11, rightPadding:I
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM5()I

    move-result v17

    mul-int/lit8 v15, v17, 0x2

    .line 228
    .local v15, topPadding:I
    move v4, v15

    .line 230
    .local v4, bottomPadding:I
    const v17, 0x7f040079

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 231
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v15, v11, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 238
    aget-object v17, v2, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 240
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 241
    aget v17, v8, v6

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 243
    .local v7, imageView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 244
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    .end local v7           #imageView:Landroid/widget/ImageView;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 248
    :cond_1
    sget-object v17, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Image doesn\'t exist, index: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 264
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bottomPadding:I
    .end local v6           #i:I
    .end local v9           #leftPadding:I
    .end local v10           #mInflater:Landroid/view/LayoutInflater;
    .end local v11           #rightPadding:I
    .end local v15           #topPadding:I
    :catch_0
    move-exception v5

    .line 265
    .local v5, e:Ljava/lang/Exception;
    sget-object v17, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    const/16 v16, 0x0

    .line 271
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    return-object v16

    .line 252
    .restart local v4       #bottomPadding:I
    .restart local v6       #i:I
    .restart local v9       #leftPadding:I
    .restart local v10       #mInflater:Landroid/view/LayoutInflater;
    .restart local v11       #rightPadding:I
    .restart local v15       #topPadding:I
    :cond_3
    const/4 v6, 0x0

    :goto_2
    :try_start_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    .line 253
    aget-object v17, v14, v6

    if-eqz v17, :cond_4

    .line 254
    aget v17, v13, v6

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 256
    .local v12, textView:Landroid/widget/TextView;
    if-eqz v12, :cond_5

    .line 257
    aget-object v17, v14, v6

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .end local v12           #textView:Landroid/widget/TextView;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 260
    .restart local v12       #textView:Landroid/widget/TextView;
    :cond_5
    sget-object v17, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Text doesn\'t exist, index: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 194
    :array_0
    .array-data 0x4
        0xe7t 0x0t 0x9t 0x7ft
        0xe8t 0x0t 0x9t 0x7ft
        0xe9t 0x0t 0x9t 0x7ft
        0xeat 0x0t 0x9t 0x7ft
    .end array-data

    .line 201
    :array_1
    .array-data 0x4
        0xadt 0x0t 0x9t 0x7ft
        0xaet 0x0t 0x9t 0x7ft
        0xaft 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "path"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 280
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, img:Ljava/io/File;
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 283
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .end local v2           #img:Ljava/io/File;
    :goto_0
    return-object v0

    .line 286
    .restart local v2       #img:Ljava/io/File;
    :cond_0
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset doesn\'t exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v2           #img:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportRegulatory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-ne v0, v1, :cond_0

    .line 56
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t support Regulatory!"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->finish()V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->setupDialog()V

    goto :goto_0
.end method

.method protected setupDialog()V
    .locals 7

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 73
    .local v1, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const/4 v3, 0x0

    .line 75
    .local v3, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const v4, 0x7f0c0592

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    :goto_0
    const/4 v4, 0x1

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->supportKddiRegulatory()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->createKddiLayout()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, layout:Landroid/view/View;
    :goto_1
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, scrollView:Landroid/widget/ScrollView;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 95
    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 96
    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->setupAlert()V

    .line 99
    return-void

    .line 79
    .end local v0           #layout:Landroid/view/View;
    .end local v2           #scrollView:Landroid/widget/ScrollView;
    :cond_0
    const v4, 0x7f0c0591

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;->createGenericLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .restart local v0       #layout:Landroid/view/View;
    goto :goto_1
.end method
