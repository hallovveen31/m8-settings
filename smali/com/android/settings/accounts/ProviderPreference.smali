.class public Lcom/android/settings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private account_num:I

.field private mAccountType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private resConnectedIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    iput-object p1, p0, Lcom/android/settings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p0, p4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "icon_indicator_connected"

    const v2, 0x7f020126

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    iput v1, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f090049

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    iget v2, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    if-lez v2, :cond_1

    const v2, 0x7f090002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iget v2, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcom/android/settings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accounts/Util;->getOverlayColor(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method
