.class final synthetic Lcom/android/systemui/tuner/-$Lambda$4lQ9PNxyP4ea_ix0wqO4dhScvss;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/fragments/FragmentService;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/tuner/TunerActivity;->lambda$-com_android_systemui_tuner_TunerActivity_2353(Lcom/android/systemui/fragments/FragmentService;)V

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
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$4lQ9PNxyP4ea_ix0wqO4dhScvss;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
