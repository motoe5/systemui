.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$jdGnvbrC24zMRHWtQAiy15iDGyk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->-com_android_systemui_statusbar_policy_KeyguardMonitorImpl-mthref-0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$jdGnvbrC24zMRHWtQAiy15iDGyk;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
