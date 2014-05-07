.class public Lcom/android/settings/HtcVolumeDialogBase;
.super Landroid/app/Activity;
.source "HtcVolumeDialogBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcVolumeDialogBase"


# instance fields
.field protected mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/Dialog;

.field protected mDialogContext:Landroid/content/Context;

.field protected mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field protected mDialogTitle:Ljava/lang/CharSequence;

.field protected mNegativeButtonText:Ljava/lang/CharSequence;

.field protected mPositiveButtonText:Ljava/lang/CharSequence;

.field protected mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialogBase;->mContext:Landroid/content/Context;

    .line 274
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialogBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogContext:Landroid/content/Context;

    return-object v0
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 218
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 220
    iput p2, p0, Lcom/android/settings/HtcVolumeDialogBase;->mWhichButtonClicked:I

    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    iput-object p0, p0, Lcom/android/settings/HtcVolumeDialogBase;->mContext:Landroid/content/Context;

    .line 108
    const v0, 0x2040145

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialogBase;->setPositiveButtonText(I)V

    .line 109
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialogBase;->setNegativeButtonText(I)V

    .line 110
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 199
    iget v2, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 205
    :goto_0
    return-object v1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 205
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 239
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialog:Landroid/app/Dialog;

    .line 227
    iget v0, p0, Lcom/android/settings/HtcVolumeDialogBase;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialogBase;->onDialogClosed(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->finish()V

    .line 229
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 152
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->onActivityStop()V

    .line 117
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .parameter "dialogLayoutResId"

    .prologue
    .line 262
    iput p1, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogLayoutResId:I

    .line 263
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "dialogTitleResId"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialogBase;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogTitle"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogTitle:Ljava/lang/CharSequence;

    .line 131
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .parameter "negativeButtonTextResId"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialogBase;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "negativeButtonText"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialogBase;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 249
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .parameter "positiveButtonTextResId"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialogBase;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "positiveButtonText"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialogBase;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 243
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogContext:Landroid/content/Context;

    .line 161
    .local v1, context:Landroid/content/Context;
    :goto_0
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/settings/HtcVolumeDialogBase;->mWhichButtonClicked:I

    .line 163
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialogBase;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialogBase;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/HtcVolumeDialogBase;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/settings/HtcVolumeDialogBase;->onBindDialogView(Landroid/view/View;)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialogBase;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 177
    :goto_1
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialogBase;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcVolumeDialogBase;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 179
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialogBase;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/HtcVolumeDialogBase;->mDialog:Landroid/app/Dialog;

    .line 180
    .local v2, dialog:Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 186
    :cond_0
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 187
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 188
    return-void

    .line 157
    .end local v0           #contentView:Landroid/view/View;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 174
    .restart local v0       #contentView:Landroid/view/View;
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    const-string v3, "HtcVolumeDialogBase"

    const-string v4, "inflate view faill!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
