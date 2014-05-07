.class public Lcom/android/settings/accounts/ManageAccountPreference;
.super Landroid/preference/Preference;
.source "ManageAccountPreference.java"


# static fields
.field public static final SYNC_DISABLED:I = 0x1

.field public static final SYNC_ENABLED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2

.field public static final SYNC_IN_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ManageAccountPreference"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZLjava/lang/CharSequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mAccount:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mAuthorities:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mShowTypeIcon:Z

    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    if-eqz p5, :cond_1

    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object p6, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/accounts/ManageAccountPreference;->setSyncStatus(IZ)V

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4

    const v3, 0x7f0c11b1

    packed-switch p1, :pswitch_data_0

    const-string v0, "ManageAccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f020131

    const-string v1, "ManageAccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020131

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020128

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020133

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020131

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f0c11be

    const-string v1, "ManageAccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0c11bc

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c11bd

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c11be

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0c11be

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    instance-of v0, p1, Lcom/android/settings/accounts/ManageAccountPreference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/settings/accounts/ManageAccountPreference;

    iget-object v1, p1, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f090049

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    const v1, 0x7f090002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v2, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setSyncStatus(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSyncStatus(IZ)V
    .locals 2

    iput p1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method
