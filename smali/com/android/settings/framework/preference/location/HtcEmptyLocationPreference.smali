.class public Lcom/android/settings/framework/preference/location/HtcEmptyLocationPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcEmptyLocationPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 14
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcEmptyLocationPreference;->setLayoutResource(I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 20
    const v1, 0x7f090046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 21
    .local v0, contentText:Lcom/htc/widget/HtcListItem1LineCenteredText;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextNoContentStyle()V

    .line 22
    const v1, 0x7f0c0195

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(I)V

    .line 23
    return-void
.end method
