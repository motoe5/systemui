.class Lcom/android/systemui/statusbar/phone/StatusBar$8;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 791
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 1
    .param p1, "dreaming"    # Z

    .prologue
    .line 794
    if-eqz p1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    .line 797
    :cond_0
    return-void
.end method
