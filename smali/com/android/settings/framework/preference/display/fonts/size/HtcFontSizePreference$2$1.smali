.class Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2$1;
.super Ljava/lang/Object;
.source "HtcFontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2$1;->this$1:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;

    iput-object p2, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
