.class public Lcom/android/settings/ChargerStatusDialog$WarningDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "ChargerStatusDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChargerStatusDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WarningDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/ChargerStatusDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/ChargerStatusDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChargerStatusDialog$WarningDialog;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/ChargerStatusDialog$WarningDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog$WarningDialog;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog$WarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessage(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog$WarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
