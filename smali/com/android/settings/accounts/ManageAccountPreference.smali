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
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .parameter "showTypeIcon"
    .parameter "label"
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

    .prologue
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mAccount:Landroid/accounts/Account;

    .line 37
    iput-object p4, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 38
    iput-boolean p5, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mShowTypeIcon:Z

    .line 39
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountPreference;->setLayoutResource(I)V

    .line 40
    if-eqz p5, :cond_1

    .line 41
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ManageAccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :goto_0
    iput-object p6, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    .line 46
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountPreference;->setPersistent(Z)V

    .line 52
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/accounts/ManageAccountPreference;->setSyncStatus(IZ)V

    .line 53
    return-void

    .line 43
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .parameter "status"

    .prologue
    const v3, 0x7f0c11b1

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 139
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

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 124
    const v0, 0x7f020131

    .line 125
    .local v0, res:I
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

    .line 127
    :goto_0
    return v0

    .line 112
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f020131

    .line 113
    .restart local v0       #res:I
    goto :goto_0

    .line 115
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f020128

    .line 116
    .restart local v0       #res:I
    goto :goto_0

    .line 118
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f020133

    .line 119
    .restart local v0       #res:I
    goto :goto_0

    .line 121
    .end local v0           #res:I
    :pswitch_3
    const v0, 0x7f020131

    .line 122
    .restart local v0       #res:I
    goto :goto_0

    .line 110
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
    .parameter "status"

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 102
    const v0, 0x7f0c11be

    .line 103
    .local v0, res:I
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

    .line 105
    :goto_0
    return v0

    .line 90
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f0c11bc

    .line 91
    .restart local v0       #res:I
    goto :goto_0

    .line 93
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f0c11bd

    .line 94
    .restart local v0       #res:I
    goto :goto_0

    .line 96
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f0c11be

    .line 97
    .restart local v0       #res:I
    goto :goto_0

    .line 99
    .end local v0           #res:I
    :pswitch_3
    const v0, 0x7f0c11be

    .line 100
    .restart local v0       #res:I
    goto :goto_0

    .line 88
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
    .parameter "other"

    .prologue
    .line 146
    instance-of v0, p1, Lcom/android/settings/accounts/ManageAccountPreference;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/settings/accounts/ManageAccountPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/accounts/ManageAccountPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 56
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

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v1, 0x7f090049

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 68
    .local v0, listItem:Lcom/htc/widget/HtcListItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 70
    const v1, 0x7f090002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    .line 71
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v2, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setSyncStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    .line 155
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 159
    :cond_0
    return-void

    .line 157
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSyncStatus(IZ)V
    .locals 2
    .parameter "status"
    .parameter "updateSummary"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    .line 77
    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mSyncStatusIcon:Lcom/htc/widget/HtcImageButton;

    iget v1, p0, Lcom/android/settings/accounts/ManageAccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    if-eqz p2, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountPreference;->setSummary(I)V

    .line 84
    :cond_1
    return-void
.end method
