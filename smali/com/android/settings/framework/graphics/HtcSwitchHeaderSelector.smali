.class public Lcom/android/settings/framework/graphics/HtcSwitchHeaderSelector;
.super Lcom/android/settings/framework/graphics/HtcDrawableSelector;
.source "HtcSwitchHeaderSelector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings/framework/graphics/HtcDrawableSelector;-><init>()V

    .line 10
    const-string v2, "list_selector_background_pressed"

    const v3, 0x7f02005d

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 13
    .local v1, pressed:I
    const v0, 0x7f020219

    .line 17
    .local v0, normal:I
    sget-object v2, Lcom/android/settings/framework/graphics/HtcSwitchHeaderSelector;->PRESSED_STATE_SET:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/framework/graphics/HtcSwitchHeaderSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    sget-object v2, Lcom/android/settings/framework/graphics/HtcSwitchHeaderSelector;->EMPTY_STATE_SET:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/framework/graphics/HtcSwitchHeaderSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 23
    return-void
.end method
