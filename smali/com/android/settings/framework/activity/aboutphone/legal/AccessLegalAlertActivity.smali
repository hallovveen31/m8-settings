.class public Lcom/android/settings/framework/activity/aboutphone/legal/AccessLegalAlertActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "AccessLegalAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/legal/AccessLegalAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 24
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0596

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/legal/AccessLegalAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 25
    iget-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/AccessLegalAlertActivity;->setupAlert()V

    .line 29
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 32
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
