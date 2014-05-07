.class public Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Lcom/htc/preference/HtcPreference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "appInfo"
    .parameter "listener"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 188
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    .line 189
    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 190
    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 191
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 197
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRadioButton;

    .line 201
    .local v1, radioButton:Lcom/htc/widget/HtcRadioButton;
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 203
    const v2, 0x7f090166

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    .local v0, banner:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method
