.class Lcom/android/systemui/tuner/TunerZenModePanel$1;
.super Ljava/lang/Object;
.source "TunerZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerZenModePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/TunerZenModePanel;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel$1;->this$0:Lcom/android/systemui/tuner/TunerZenModePanel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel$1;->this$0:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->-wrap0(Lcom/android/systemui/tuner/TunerZenModePanel;)V

    .line 138
    return-void
.end method
