.class Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;
.super Landroid/widget/ImageView;
.source "HtcAbsMediaFilePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorBar"
.end annotation


# instance fields
.field private final COLOR_BAR_WIDTH_RES_ID:I

.field private mDesiredWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    const v0, 0x2050160

    iput v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;->COLOR_BAR_WIDTH_RES_ID:I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;->initialize(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 79
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM3()I

    move-result v0

    .line 82
    .local v0, M3:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;->mDesiredWidth:I

    .line 84
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;->mDesiredWidth:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 89
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 93
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void

    .line 91
    :cond_0
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method public getDesiredWidth()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;->mDesiredWidth:I

    return v0
.end method
