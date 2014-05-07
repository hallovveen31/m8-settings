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
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    iput v2, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    .line 44
    iput-object p1, p0, Lcom/android/settings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    .line 45
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 49
    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const-string v1, "icon_indicator_connected"

    const v2, 0x7f020126

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    .line 53
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 55
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 56
    array-length v1, v0

    iput v1, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 64
    const v2, 0x7f090049

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 65
    .local v1, listItem:Lcom/htc/widget/HtcListItem;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 66
    iget v2, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    if-lez v2, :cond_1

    .line 67
    const v2, 0x7f090002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    .line 68
    .local v0, icon:Lcom/htc/widget/HtcImageButton;
    iget v2, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    if-lez v2, :cond_0

    .line 69
    iget v2, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 72
    :cond_0
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcom/android/settings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accounts/Util;->getOverlayColor(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 78
    .end local v0           #icon:Lcom/htc/widget/HtcImageButton;
    :cond_1
    return-void
.end method
