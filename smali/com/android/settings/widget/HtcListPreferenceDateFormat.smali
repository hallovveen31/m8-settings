.class public Lcom/android/settings/widget/HtcListPreferenceDateFormat;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcListPreferenceDateFormat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    return-void
.end method

.method public showParentDialog()V
    .locals 0

    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onClick()V

    return-void
.end method
