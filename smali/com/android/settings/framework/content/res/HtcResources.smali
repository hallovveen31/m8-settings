.class public Lcom/android/settings/framework/content/res/HtcResources;
.super Landroid/content/res/Resources;
.source "HtcResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;,
        Lcom/android/settings/framework/content/res/HtcResources$BooleanState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/res/HtcResources;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/res/HtcResources;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/res/HtcResources;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "res"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 45
    return-void
.end method

.method public static getDefaultTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 368
    const-string v0, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledString(Landroid/content/res/Resources;Lcom/android/settings/framework/content/res/HtcResources$BooleanState;Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;IZ)Ljava/lang/String;
    .locals 9
    .parameter "res"
    .parameter "booleanStates"
    .parameter "resIds"
    .parameter "limit"
    .parameter "shortAnd"

    .prologue
    .line 169
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "These parameters should not be null.\n - res: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n - booleanStates: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n - resIds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_1
    #getter for: Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->mStates:[Z
    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->access$000(Lcom/android/settings/framework/content/res/HtcResources$BooleanState;)[Z

    move-result-object v5

    array-length v5, v5

    #getter for: Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->mResIds:[I
    invoke-static {p2}, Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->access$100(Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;)[I

    move-result-object v6

    array-length v6, v6

    if-le v5, v6, :cond_2

    .line 177
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#(booleanStates) should be <= #(resIds)\n - #(booleanStates): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->mStates:[Z
    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->access$000(Lcom/android/settings/framework/content/res/HtcResources$BooleanState;)[Z

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n - #(resIds): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->mResIds:[I
    invoke-static {p2}, Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->access$100(Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;)[I

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_2
    const/4 v0, 0x0

    .line 184
    .local v0, count:I
    #getter for: Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->mStates:[Z
    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->access$000(Lcom/android/settings/framework/content/res/HtcResources$BooleanState;)[Z

    move-result-object v5

    array-length v3, v5

    .line 185
    .local v3, size:I
    new-array v4, v3, [Ljava/lang/String;

    .line 186
    .local v4, strings:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 187
    #getter for: Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->mStates:[Z
    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources$BooleanState;->access$000(Lcom/android/settings/framework/content/res/HtcResources$BooleanState;)[Z

    move-result-object v5

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_8

    .line 188
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    #getter for: Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->mResIds:[I
    invoke-static {p2}, Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;->access$100(Lcom/android/settings/framework/content/res/HtcResources$ResourceIds;)[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 186
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 192
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 244
    const v5, 0x7f0c00fe

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x3

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    return-object v5

    .line 194
    :pswitch_0
    const-string v5, ""

    goto :goto_2

    .line 197
    :pswitch_1
    const v5, 0x7f0c00f9

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 201
    :pswitch_2
    if-eqz p4, :cond_4

    .line 203
    const v5, 0x7f0c00fb

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 208
    :cond_4
    const v5, 0x7f0c00fa

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 213
    :pswitch_3
    const/4 v5, 0x2

    if-ne p3, v5, :cond_5

    .line 215
    const v5, 0x7f0c00fc

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 220
    :cond_5
    const v5, 0x7f0c00fd

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 225
    :pswitch_4
    const/4 v5, 0x2

    if-ne p3, v5, :cond_6

    .line 227
    const v5, 0x7f0c00fc

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 230
    :cond_6
    const/4 v5, 0x3

    if-ne p3, v5, :cond_7

    .line 232
    const v5, 0x7f0c00fe

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 237
    :cond_7
    const v5, 0x7f0c00ff

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x3

    aget-object v8, v4, v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_8
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto/16 :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getHtcThemeOverlayColor(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v3, 0x1

    new-array v2, v3, [I

    const v3, 0x2010055

    aput v3, v2, v4

    .line 323
    .local v2, colorAttrs:[I
    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 327
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 328
    .local v1, categoryColor:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    return v1
.end method

.method public static getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .parameter "context"

    .prologue
    .line 346
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p0}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static getNewInstance(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 4
    .parameter "context"

    .prologue
    .line 82
    new-instance v0, Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/android/settings/framework/content/res/HtcAssetManager;->createAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static getRawString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 4
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 255
    const/16 v1, 0x1000

    .line 256
    .local v1, DEFAULT_CAPACITY:I
    const/16 v0, 0x400

    .line 257
    .local v0, BUFFER_SIZE:I
    const/16 v2, 0x1000

    const/16 v3, 0x400

    invoke-static {p0, p1, v2, v3}, Lcom/android/settings/framework/content/res/HtcResources;->getRawString(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRawString(Landroid/content/res/Resources;III)Ljava/lang/String;
    .locals 10
    .parameter "res"
    .parameter "resId"
    .parameter "defaultContentCapacity"
    .parameter "bufferSize"

    .prologue
    .line 270
    const/4 v5, 0x0

    .line 272
    .local v5, reader:Ljava/io/BufferedReader;
    new-array v0, p3, [C

    .line 277
    .local v0, buffer:[C
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 279
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 283
    .local v1, content:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .local v4, length:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 284
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 289
    .end local v1           #content:Ljava/lang/StringBuilder;
    .end local v4           #length:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 290
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_1
    sget-object v7, Lcom/android/settings/framework/content/res/HtcResources;->TAG:Ljava/lang/String;

    const-string v8, "Failed to load the content!"

    invoke-static {v7, v8, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Error!"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v1       #content:Ljava/lang/StringBuilder;
    if-eqz v5, :cond_0

    .line 296
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 303
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    sget-boolean v7, Lcom/android/settings/framework/content/res/HtcResources;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 304
    sget-object v7, Lcom/android/settings/framework/content/res/HtcResources;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRawString(...)\n - length(content): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 288
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #length:I
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v5, v6

    .line 301
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 297
    .end local v4           #length:I
    .restart local v2       #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 298
    .local v3, e2:Ljava/io/IOException;
    sget-object v7, Lcom/android/settings/framework/content/res/HtcResources;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close the reader!"

    invoke-static {v7, v8, v3}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 289
    .end local v1           #content:Ljava/lang/StringBuilder;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_1
.end method
