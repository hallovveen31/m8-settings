.class public Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcFontSizePreference.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final KEY:Ljava/lang/String; = "FONT_SETTING"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final EXTRA_LARGE_SIZE_VALUE:Ljava/lang/String;

.field private final HUGE_FONT_SIZE_VALUE:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFontSizeEntries:[Ljava/lang/String;

.field private mFontSizeValues:[Ljava/lang/String;

.field private mIsAlignLastControl:Z

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPixel:[I

.field private mPrevHtcFontScale:F

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "1.45"

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->HUGE_FONT_SIZE_VALUE:Ljava/lang/String;

    const-string v0, "1.30"

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->EXTRA_LARGE_SIZE_VALUE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mIsAlignLastControl:Z

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "1.45"

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->HUGE_FONT_SIZE_VALUE:Ljava/lang/String;

    const-string v0, "1.30"

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->EXTRA_LARGE_SIZE_VALUE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mIsAlignLastControl:Z

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mIsAlignLastControl:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mPixel:[I

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isExtraLargeToHuge(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->isHugeToExtraLarge(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->DEBUG:Z

    return v0
.end method

.method private getFontSizeEntries()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportFontSizeWithHuge(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFontSizeValues()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportFontSizeWithHuge(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mIsAlignLastControl:Z

    :cond_0
    return-void
.end method

.method private initAdapter()V
    .locals 6

    new-instance v0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f04007d

    const v4, 0x1020014

    iget-object v5, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeEntries:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$1;-><init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method private initPixelData()V
    .locals 10

    iget-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeValues:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mPixel:[I

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;

    const-string v8, "com.htc"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeValues:[Ljava/lang/String;

    array-length v6, v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    iget-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeValues:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v1, Landroid/content/res/Configuration;->fontScale:F

    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v5, v0, v7, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mPixel:[I

    const v8, 0x20500eb

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v7, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->TAG:Ljava/lang/String;

    const-string v8, "com.htc not found"

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isExtraLargeToHuge(F)Z
    .locals 2

    iget v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mPrevHtcFontScale:F

    const-string v1, "1.30"

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "1.45"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHugeToExtraLarge(F)Z
    .locals 2

    iget v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mPrevHtcFontScale:F

    const-string v1, "1.45"

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "1.30"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getFontSizeEntries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeEntries:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeEntries:[Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getFontSizeValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->initPixelData()V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->initAdapter()V

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mFontSizeValues:[Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    const-string v0, "FONT_SETTING"

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$3;-><init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/content/res/HtcConfiguration;->getHtcFontscale()F

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mPrevHtcFontScale:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    array-length v2, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-nez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;-><init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
