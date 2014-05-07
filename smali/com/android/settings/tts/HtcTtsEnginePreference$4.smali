.class Lcom/android/settings/tts/HtcTtsEnginePreference$4;
.super Ljava/lang/Object;
.source "HtcTtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/HtcTtsEnginePreference;->onRadioButtonClicked(Lcom/htc/widget/HtcCompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/HtcTtsEnginePreference;

.field final synthetic val$buttonView:Lcom/htc/widget/HtcCompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/HtcTtsEnginePreference;Lcom/htc/widget/HtcCompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/HtcTtsEnginePreference$4;->this$0:Lcom/android/settings/tts/HtcTtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings/tts/HtcTtsEnginePreference$4;->val$buttonView:Lcom/htc/widget/HtcCompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference$4;->val$buttonView:Lcom/htc/widget/HtcCompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    return-void
.end method
