.class public Lcom/android/settings/framework/widget/HtcColorFilterImageView;
.super Landroid/widget/ImageView;
.source "HtcColorFilterImageView.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field public static sThemeOverlayColorFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->TAG:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public setColorFilterEnabled(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->sThemeOverlayColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->sThemeOverlayColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 58
    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorFilterEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    if-eqz p2, :cond_2

    .line 63
    sget-object v0, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->sThemeOverlayColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 92
    :goto_0
    return-void

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->clearColorFilter()V

    goto :goto_0
.end method
