.class Lcom/android/settings/tts/HtcTtsEnginePreference$1;
.super Ljava/lang/Object;
.source "HtcTtsEnginePreference.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/HtcTtsEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/HtcTtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/HtcTtsEnginePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/HtcTtsEnginePreference$1;->this$0:Lcom/android/settings/tts/HtcTtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference$1;->this$0:Lcom/android/settings/tts/HtcTtsEnginePreference;

    #calls: Lcom/android/settings/tts/HtcTtsEnginePreference;->onRadioButtonClicked(Lcom/htc/widget/HtcCompoundButton;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/tts/HtcTtsEnginePreference;->access$000(Lcom/android/settings/tts/HtcTtsEnginePreference;Lcom/htc/widget/HtcCompoundButton;Z)V

    return-void
.end method
