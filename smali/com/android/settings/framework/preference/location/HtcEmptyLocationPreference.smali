.class public Lcom/android/settings/framework/preference/location/HtcEmptyLocationPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcEmptyLocationPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f090046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextNoContentStyle()V

    const v1, 0x7f0c0195

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(I)V

    return-void
.end method
